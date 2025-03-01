import '../../../domain/failures/request_failure/request_failure.dart';
import '../../../domain/models/media/media.dart';
import '../../../domain/result/result.dart';
import '../../../domain/typedefs.dart';
import '../../api_source/api_source.dart';
import '../utils/handle_failure.dart';

class MediaApi {
  final ApiSource _apiSource;

  MediaApi(this._apiSource);

  Future<ResultMedia> getMedia(int page) async {
    final result = await _apiSource.request(
      '/trending/all/week',
      queryParameters: {
        'page': page.toString(),
      },
      onSuccess: (json) {
        final list = List<Json>.from(json['results']);
        final items = getMediaList(list);
        return items;
      },
    );

    return switch (result) {
      Success(data: final mediaList) => Result.success(mediaList),
      Failure(error: final apiFailure) => handleHttpFailure(apiFailure),
      _ => Result.failure(RequestFailure.unknown())
    };
  }

  Future<ResultMedia> searchMedia(String query, int page) async {
    final result = await _apiSource.request(
      '/search/multi',
      queryParameters: {
        'query': query,
      },
      onSuccess: (json) {
        final list = List<Json>.from(json['results']);
        final items = getMediaList(list);
        return items;
      },
    );

    return switch (result) {
      Success(data: final mediaList) => Result.success(mediaList),
      Failure(error: final apiFailure) => handleHttpFailure(apiFailure),
      _ => Result.failure(RequestFailure.unknown())
    };
  }
}
