import 'package:freezed_annotation/freezed_annotation.dart';

import '../media/genre/genre.dart';
import '../media/media.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
sealed class Movie with _$Movie {
  const Movie._();
  const factory Movie({
    required int id,
    required List<Genre> genres,
    required String overview,
    required bool video,
    required String homepage,

    ///
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'original_title') required String originalTitle,
    @JsonKey(name: 'release_date') required DateTime releaseDate,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'backdrop_path') required String backdropPath,
    @JsonKey(name: 'poster_path') required String posterPath,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Media toMedia() {
    return Media(
      id: id,
      overview: overview,
      title: title,
      originalTitle: originalTitle,
      posterPath: posterPath,
      backdropPath: backdropPath,
      voteAverage: voteAverage,
    );
  }
}
