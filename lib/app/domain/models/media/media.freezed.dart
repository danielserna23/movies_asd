// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Media {
  int get id;
  String get overview; //
  @JsonKey(readValue: readTitleValue)
  String get title;
  @JsonKey(readValue: readOriginalTitleValue)
  String get originalTitle;
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @JsonKey(name: 'media_type')
  MediaType get type;
  @JsonKey(name: 'vote_average')
  double get voteAverage;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MediaCopyWith<Media> get copyWith =>
      _$MediaCopyWithImpl<Media>(this as Media, _$identity);

  /// Serializes this Media to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Media &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, overview, title,
      originalTitle, posterPath, backdropPath, type, voteAverage);

  @override
  String toString() {
    return 'Media(id: $id, overview: $overview, title: $title, originalTitle: $originalTitle, posterPath: $posterPath, backdropPath: $backdropPath, type: $type, voteAverage: $voteAverage)';
  }
}

/// @nodoc
abstract mixin class $MediaCopyWith<$Res> {
  factory $MediaCopyWith(Media value, $Res Function(Media) _then) =
      _$MediaCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String overview,
      @JsonKey(readValue: readTitleValue) String title,
      @JsonKey(readValue: readOriginalTitleValue) String originalTitle,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'media_type') MediaType type,
      @JsonKey(name: 'vote_average') double voteAverage});
}

/// @nodoc
class _$MediaCopyWithImpl<$Res> implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._self, this._then);

  final Media _self;
  final $Res Function(Media) _then;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? overview = null,
    Object? title = null,
    Object? originalTitle = null,
    Object? posterPath = null,
    Object? backdropPath = freezed,
    Object? type = null,
    Object? voteAverage = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      overview: null == overview
          ? _self.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _self.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _self.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: freezed == backdropPath
          ? _self.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
      voteAverage: null == voteAverage
          ? _self.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Media implements Media {
  _Media(
      {required this.id,
      required this.overview,
      @JsonKey(readValue: readTitleValue) required this.title,
      @JsonKey(readValue: readOriginalTitleValue) required this.originalTitle,
      @JsonKey(name: 'poster_path') required this.posterPath,
      @JsonKey(name: 'backdrop_path') required this.backdropPath,
      @JsonKey(name: 'media_type') required this.type,
      @JsonKey(name: 'vote_average') required this.voteAverage});
  factory _Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

  @override
  final int id;
  @override
  final String overview;
//
  @override
  @JsonKey(readValue: readTitleValue)
  final String title;
  @override
  @JsonKey(readValue: readOriginalTitleValue)
  final String originalTitle;
  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  @JsonKey(name: 'media_type')
  final MediaType type;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MediaCopyWith<_Media> get copyWith =>
      __$MediaCopyWithImpl<_Media>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MediaToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Media &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, overview, title,
      originalTitle, posterPath, backdropPath, type, voteAverage);

  @override
  String toString() {
    return 'Media(id: $id, overview: $overview, title: $title, originalTitle: $originalTitle, posterPath: $posterPath, backdropPath: $backdropPath, type: $type, voteAverage: $voteAverage)';
  }
}

/// @nodoc
abstract mixin class _$MediaCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$MediaCopyWith(_Media value, $Res Function(_Media) _then) =
      __$MediaCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String overview,
      @JsonKey(readValue: readTitleValue) String title,
      @JsonKey(readValue: readOriginalTitleValue) String originalTitle,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'media_type') MediaType type,
      @JsonKey(name: 'vote_average') double voteAverage});
}

/// @nodoc
class __$MediaCopyWithImpl<$Res> implements _$MediaCopyWith<$Res> {
  __$MediaCopyWithImpl(this._self, this._then);

  final _Media _self;
  final $Res Function(_Media) _then;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? overview = null,
    Object? title = null,
    Object? originalTitle = null,
    Object? posterPath = null,
    Object? backdropPath = freezed,
    Object? type = null,
    Object? voteAverage = null,
  }) {
    return _then(_Media(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      overview: null == overview
          ? _self.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _self.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _self.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: freezed == backdropPath
          ? _self.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
      voteAverage: null == voteAverage
          ? _self.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
