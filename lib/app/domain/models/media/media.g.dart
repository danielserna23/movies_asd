// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Media _$MediaFromJson(Map<String, dynamic> json) => _Media(
      id: (json['id'] as num).toInt(),
      overview: json['overview'] as String,
      title: readTitleValue(json, 'title') as String,
      originalTitle: readOriginalTitleValue(json, 'originalTitle') as String,
      posterPath: json['poster_path'] as String,
      backdropPath: json['backdrop_path'] as String?,
      type: $enumDecode(_$MediaTypeEnumMap, json['media_type']),
      voteAverage: (json['vote_average'] as num).toDouble(),
    );

Map<String, dynamic> _$MediaToJson(_Media instance) => <String, dynamic>{
      'id': instance.id,
      'overview': instance.overview,
      'title': instance.title,
      'originalTitle': instance.originalTitle,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'media_type': _$MediaTypeEnumMap[instance.type]!,
      'vote_average': instance.voteAverage,
    };

const _$MediaTypeEnumMap = {
  MediaType.movie: 'movie',
  MediaType.tv: 'tv',
};
