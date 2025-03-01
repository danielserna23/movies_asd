import 'package:freezed_annotation/freezed_annotation.dart';

import '../../typedefs.dart';

part 'media.freezed.dart';
part 'media.g.dart';

enum MediaType {
  @JsonValue('movie')
  movie,
  @JsonValue('tv')
  tv,
}

@freezed
sealed class Media with _$Media {
  factory Media({
    required int id,
    required String overview,

    //
    @JsonKey(readValue: readTitleValue) required String title,
    @JsonKey(readValue: readOriginalTitleValue) required String originalTitle,
    @JsonKey(name: 'poster_path') required String posterPath,
    @JsonKey(name: 'backdrop_path') required String? backdropPath,
    @JsonKey(name: 'media_type') required MediaType type,
    @JsonKey(name: 'vote_average') required double voteAverage,
  }) = _Media;

  factory Media.fromJson(Json json) => _$MediaFromJson(json);
}

Object? readTitleValue(Map map, String _) {
  return map['title'] ?? map['name'];
}

Object? readOriginalTitleValue(Map map, String _) {
  return map['original_title'] ?? map['original_name'];
}

List<Media> getMediaList(List<Json> list) {
  return list
      .where(
        (e) =>
            e['media_type'] != 'person' &&
            e['poster_path'] != null &&
            e['backdrop_path'] != null,
      )
      .map(
        (item) => Media.fromJson(item),
      )
      .toList();
}
