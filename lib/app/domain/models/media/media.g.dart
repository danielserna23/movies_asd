// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MediaAdapter extends TypeAdapter<Media> {
  @override
  final int typeId = 1;

  @override
  Media read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Media(
      id: (fields[0] as num).toInt(),
      overview: fields[1] as String,
      title: fields[2] as String,
      originalTitle: fields[3] as String,
      posterPath: fields[4] as String,
      backdropPath: fields[5] as String?,
      voteAverage: (fields[7] as num).toDouble(),
    );
  }

  @override
  void write(BinaryWriter writer, Media obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.overview)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.originalTitle)
      ..writeByte(4)
      ..write(obj.posterPath)
      ..writeByte(5)
      ..write(obj.backdropPath)
      ..writeByte(7)
      ..write(obj.voteAverage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MediaAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Media _$MediaFromJson(Map<String, dynamic> json) => _Media(
      id: (json['id'] as num).toInt(),
      overview: json['overview'] as String,
      title: json['title'] as String,
      originalTitle: json['original_title'] as String,
      posterPath: json['poster_path'] as String,
      backdropPath: json['backdrop_path'] as String?,
      voteAverage: (json['vote_average'] as num).toDouble(),
    );

Map<String, dynamic> _$MediaToJson(_Media instance) => <String, dynamic>{
      'id': instance.id,
      'overview': instance.overview,
      'title': instance.title,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'vote_average': instance.voteAverage,
    };
