import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

import '../../typedefs.dart';

part 'media.freezed.dart';
part 'media.g.dart';

@freezed
@HiveType(typeId: 1, adapterName: 'MediaAdapter')
sealed class Media with _$Media {
  factory Media({
    @HiveField(0) required int id,
    @HiveField(1) required String overview,
    @HiveField(2) @JsonKey(name: 'title') required String title,
    @HiveField(3)
    @JsonKey(name: 'original_title')
    required String originalTitle,
    @HiveField(4) @JsonKey(name: 'poster_path') required String posterPath,
    @HiveField(5) @JsonKey(name: 'backdrop_path') required String? backdropPath,
    @HiveField(7) @JsonKey(name: 'vote_average') required double voteAverage,
  }) = _Media;

  factory Media.fromJson(Json json) => _$MediaFromJson(json);
}

List<Media> getMediaList(List<Json> list) {
  return list
      .where(
        (e) => e['poster_path'] != null && e['backdrop_path'] != null,
      )
      .map(
        (item) => Media.fromJson(item),
      )
      .toList();
}
