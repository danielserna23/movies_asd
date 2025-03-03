import 'dart:async';
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_asd/app/data/api_source/api_source.dart';
import 'package:movies_asd/app/data/repositories/media_repository_impl.dart';
import 'package:movies_asd/app/data/services/remote/media_api.dart';
import 'package:movies_asd/app/domain/failures/request_failure/request_failure.dart';
import 'package:movies_asd/app/domain/models/media/genre/genre.dart';
import 'package:movies_asd/app/domain/models/media/media.dart';
import 'package:movies_asd/app/domain/models/movie/movie.dart';
import 'package:movies_asd/app/domain/typedefs.dart';

import '../../../mocks.dart';

Media createFakeMedia({
  int id = 1,
  String title = '',
  String posterPath = '',
  double voteAverage = 7.5,
  String overview = '',
  String originalTitle = '',
  String backdropPath = '',
}) {
  return Media(
    id: id,
    title: title,
    posterPath: posterPath,
    voteAverage: voteAverage,
    overview: overview,
    originalTitle: originalTitle,
    backdropPath: backdropPath,
  );
}

Movie createFakeMovie({
  String backdropPath = '',
  List<Genre> genres = const [],
  String homepage = '',
  int id = 1,
  String originalLanguage = '',
  String originalTitle = '',
  String overview = '',
  String posterPath = ' ',
  String title = '',
  double voteAverage = 7.5,
  bool video = false,
  DateTime? releaseDate,
}) {
  return Movie(
    id: id,
    genres: genres,
    overview: overview,
    video: video,
    title: title,
    originalTitle: originalTitle,
    releaseDate: releaseDate ?? DateTime.parse('2024-12-20'),
    voteAverage: voteAverage,
    backdropPath: backdropPath,
    posterPath: posterPath,
  );
}

void main() {
  group('MediaRepositoryImpl >', () {
    late MediaRepositoryImpl repository;
    late MockClient client;
    late ApiSource apiSource;
    late Media fakeMedia;
    setUp(
      () {
        client = MockClient();
        apiSource = ApiSource(
          client: client,
          baseUrl: '',
          apiKey: 'apiKey',
        );

        repository = MediaRepositoryImpl(MediaApi(apiSource));
        fakeMedia = createFakeMedia();
      },
    );
    Future<void> mockGet({
      required String path,
      required Map<String, dynamic> json,
      required int statusCode,
    }) {
      final completer = Completer();
      when(
        client.get(
          Uri.parse(path),
          headers: anyNamed('headers'),
        ),
      ).thenAnswer((_) async {
        completer.complete();
        return Response(
          jsonEncode(json),
          statusCode,
        );
      });
      return completer.future;
    }

    test(
      'getMedia should return error',
      () async {
        final future = mockGet(
          path: '/trending/movie/week?page=1&api_key=apiKey',
          json: {
            'success': false,
            'status_code': 5,
            'status_message': '',
          },
          statusCode: 401,
        );
        final result = await repository.getMedia(1);
        await future;

        expect(result, ResultMedia.failure(RequestFailure.unauthorized()));
      },
      timeout: const Timeout(
        Duration(seconds: 5),
      ),
    );

    test(
      'getMedia should return success',
      () async {
        final future = mockGet(
          path: '/trending/movie/week?page=1&api_key=apiKey',
          json: {
            'page': 1,
            'results': [
              {
                'backdrop_path': '',
                'id': 1,
                'title': '',
                'original_title': '',
                'overview': '',
                'poster_path': '',
                'vote_average': 7.5,
              },
            ],
          },
          statusCode: 200,
        );
        final result = await repository.getMedia(1);
        await future;

        expect(result, ResultMedia.success([fakeMedia]));
      },
      timeout: const Timeout(
        Duration(seconds: 5),
      ),
    );

    test(
      'searchMedia should return error',
      () async {
        final future = mockGet(
          path: '/search/multi?query=query&api_key=apiKey',
          json: {
            'success': false,
            'status_code': 5,
            'status_message': '',
          },
          statusCode: 400,
        );
        final result = await repository.searchMedia('query', 1);
        await future;

        expect(result, ResultMedia.failure(RequestFailure.unknown()));
      },
      timeout: const Timeout(
        Duration(seconds: 5),
      ),
    );

    test(
      'searchMedia should return success',
      () async {
        final future = mockGet(
          path: '/search/multi?query=query&api_key=apiKey',
          json: {
            'page': 1,
            'results': [
              {
                'backdrop_path': '',
                'id': 1,
                'title': '',
                'original_title': '',
                'overview': '',
                'poster_path': '',
                'vote_average': 7.5,
              },
            ],
          },
          statusCode: 200,
        );
        final result = await repository.searchMedia('query', 1);
        await future;

        expect(result, ResultMedia.success([fakeMedia]));
      },
      timeout: const Timeout(
        Duration(seconds: 5),
      ),
    );
    test(
      'getMediaById should return error',
      () async {
        const int movieId = 122345;
        final future = mockGet(
          path: '/movie/$movieId?api_key=apiKey',
          json: {
            'success': false,
            'status_code': 6,
            'status_message': '',
          },
          statusCode: 400,
        );
        final result = await repository.getMediaById(movieId);
        await future;

        expect(result, ResultMovie.failure(RequestFailure.unknown()));
      },
      timeout: const Timeout(
        Duration(seconds: 5),
      ),
    );

    test(
      'getMediaById should return success',
      () async {
        final future = mockGet(
          path: '/movie/122345?api_key=apiKey',
          json: {
            'backdrop_path': '',
            'genres': [],
            'homepage': '',
            'id': 1,
            'original_language': '',
            'original_title': '',
            'overview': '',
            'poster_path': ' ',
            'title': '',
            'vote_average': 7.5,
            'video': false,
            'release_date': '2024-12-20',
          },
          statusCode: 200,
        );
        final result = await repository.getMediaById(122345);
        await future;

        expect(result, ResultMovie.success(createFakeMovie()));
      },
      timeout: const Timeout(
        Duration(seconds: 5),
      ),
    );
  });
}
