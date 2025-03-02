// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Movie {
  int get id;
  List<Genre> get genres;
  String get overview;
  int get runtime;
  bool get video;

  ///
  @JsonKey(readValue: readTitleValue)
  String get title;
  @JsonKey(readValue: readOriginalTitleValue)
  String get originalTitle;
  @JsonKey(name: 'release_date')
  DateTime get releaseDate;
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @JsonKey(name: 'backdrop_path')
  String get backdropPath;
  @JsonKey(name: 'poster_path')
  String get posterPath;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MovieCopyWith<Movie> get copyWith =>
      _$MovieCopyWithImpl<Movie>(this as Movie, _$identity);

  /// Serializes this Movie to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Movie &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.genres, genres) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(genres),
      overview,
      runtime,
      video,
      title,
      originalTitle,
      releaseDate,
      voteAverage,
      backdropPath,
      posterPath);

  @override
  String toString() {
    return 'Movie(id: $id, genres: $genres, overview: $overview, runtime: $runtime, video: $video, title: $title, originalTitle: $originalTitle, releaseDate: $releaseDate, voteAverage: $voteAverage, backdropPath: $backdropPath, posterPath: $posterPath)';
  }
}

/// @nodoc
abstract mixin class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) _then) =
      _$MovieCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      List<Genre> genres,
      String overview,
      int runtime,
      bool video,
      @JsonKey(readValue: readTitleValue) String title,
      @JsonKey(readValue: readOriginalTitleValue) String originalTitle,
      @JsonKey(name: 'release_date') DateTime releaseDate,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      @JsonKey(name: 'poster_path') String posterPath});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res> implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._self, this._then);

  final Movie _self;
  final $Res Function(Movie) _then;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? genres = null,
    Object? overview = null,
    Object? runtime = null,
    Object? video = null,
    Object? title = null,
    Object? originalTitle = null,
    Object? releaseDate = null,
    Object? voteAverage = null,
    Object? backdropPath = null,
    Object? posterPath = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      genres: null == genres
          ? _self.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      overview: null == overview
          ? _self.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      runtime: null == runtime
          ? _self.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int,
      video: null == video
          ? _self.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _self.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _self.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      voteAverage: null == voteAverage
          ? _self.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      backdropPath: null == backdropPath
          ? _self.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _self.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Movie extends Movie {
  const _Movie(
      {required this.id,
      required final List<Genre> genres,
      required this.overview,
      required this.runtime,
      required this.video,
      @JsonKey(readValue: readTitleValue) required this.title,
      @JsonKey(readValue: readOriginalTitleValue) required this.originalTitle,
      @JsonKey(name: 'release_date') required this.releaseDate,
      @JsonKey(name: 'vote_average') required this.voteAverage,
      @JsonKey(name: 'backdrop_path') required this.backdropPath,
      @JsonKey(name: 'poster_path') required this.posterPath})
      : _genres = genres,
        super._();
  factory _Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  @override
  final int id;
  final List<Genre> _genres;
  @override
  List<Genre> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  final String overview;
  @override
  final int runtime;
  @override
  final bool video;

  ///
  @override
  @JsonKey(readValue: readTitleValue)
  final String title;
  @override
  @JsonKey(readValue: readOriginalTitleValue)
  final String originalTitle;
  @override
  @JsonKey(name: 'release_date')
  final DateTime releaseDate;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @override
  @JsonKey(name: 'backdrop_path')
  final String backdropPath;
  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MovieCopyWith<_Movie> get copyWith =>
      __$MovieCopyWithImpl<_Movie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MovieToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Movie &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_genres),
      overview,
      runtime,
      video,
      title,
      originalTitle,
      releaseDate,
      voteAverage,
      backdropPath,
      posterPath);

  @override
  String toString() {
    return 'Movie(id: $id, genres: $genres, overview: $overview, runtime: $runtime, video: $video, title: $title, originalTitle: $originalTitle, releaseDate: $releaseDate, voteAverage: $voteAverage, backdropPath: $backdropPath, posterPath: $posterPath)';
  }
}

/// @nodoc
abstract mixin class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) _then) =
      __$MovieCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      List<Genre> genres,
      String overview,
      int runtime,
      bool video,
      @JsonKey(readValue: readTitleValue) String title,
      @JsonKey(readValue: readOriginalTitleValue) String originalTitle,
      @JsonKey(name: 'release_date') DateTime releaseDate,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      @JsonKey(name: 'poster_path') String posterPath});
}

/// @nodoc
class __$MovieCopyWithImpl<$Res> implements _$MovieCopyWith<$Res> {
  __$MovieCopyWithImpl(this._self, this._then);

  final _Movie _self;
  final $Res Function(_Movie) _then;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? genres = null,
    Object? overview = null,
    Object? runtime = null,
    Object? video = null,
    Object? title = null,
    Object? originalTitle = null,
    Object? releaseDate = null,
    Object? voteAverage = null,
    Object? backdropPath = null,
    Object? posterPath = null,
  }) {
    return _then(_Movie(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      genres: null == genres
          ? _self._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      overview: null == overview
          ? _self.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      runtime: null == runtime
          ? _self.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int,
      video: null == video
          ? _self.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _self.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _self.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      voteAverage: null == voteAverage
          ? _self.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      backdropPath: null == backdropPath
          ? _self.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _self.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
