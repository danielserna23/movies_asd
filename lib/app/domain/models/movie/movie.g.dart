// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Movie _$MovieFromJson(Map<String, dynamic> json) => _Movie(
      id: (json['id'] as num).toInt(),
      genres: (json['genres'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      overview: json['overview'] as String,
      runtime: (json['runtime'] as num).toInt(),
      video: json['video'] as bool,
      title: readTitleValue(json, 'title') as String,
      originalTitle: readOriginalTitleValue(json, 'originalTitle') as String,
      releaseDate: DateTime.parse(json['release_date'] as String),
      voteAverage: (json['vote_average'] as num).toDouble(),
      backdropPath: json['backdrop_path'] as String,
      posterPath: json['poster_path'] as String,
    );

Map<String, dynamic> _$MovieToJson(_Movie instance) => <String, dynamic>{
      'id': instance.id,
      'genres': instance.genres,
      'overview': instance.overview,
      'runtime': instance.runtime,
      'video': instance.video,
      'title': instance.title,
      'originalTitle': instance.originalTitle,
      'release_date': instance.releaseDate.toIso8601String(),
      'vote_average': instance.voteAverage,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
    };
