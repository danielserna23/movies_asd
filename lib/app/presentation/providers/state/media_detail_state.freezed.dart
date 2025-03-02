// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MediaDetailState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MediaDetailState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MediaDetailState()';
  }
}

/// @nodoc
class $MediaDetailStateCopyWith<$Res> {
  $MediaDetailStateCopyWith(
      MediaDetailState _, $Res Function(MediaDetailState) __);
}

/// @nodoc

class MediaDetailStateInitial implements MediaDetailState {
  const MediaDetailStateInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MediaDetailStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MediaDetailState.initial()';
  }
}

/// @nodoc

class MediaDetailStateLoading implements MediaDetailState {
  const MediaDetailStateLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MediaDetailStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MediaDetailState.loading()';
  }
}

/// @nodoc

class MediaDetailStateLoaded implements MediaDetailState {
  const MediaDetailStateLoaded(this.movie);

  final Movie movie;

  /// Create a copy of MediaDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MediaDetailStateLoadedCopyWith<MediaDetailStateLoaded> get copyWith =>
      _$MediaDetailStateLoadedCopyWithImpl<MediaDetailStateLoaded>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MediaDetailStateLoaded &&
            (identical(other.movie, movie) || other.movie == movie));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie);

  @override
  String toString() {
    return 'MediaDetailState.loaded(movie: $movie)';
  }
}

/// @nodoc
abstract mixin class $MediaDetailStateLoadedCopyWith<$Res>
    implements $MediaDetailStateCopyWith<$Res> {
  factory $MediaDetailStateLoadedCopyWith(MediaDetailStateLoaded value,
          $Res Function(MediaDetailStateLoaded) _then) =
      _$MediaDetailStateLoadedCopyWithImpl;
  @useResult
  $Res call({Movie movie});

  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class _$MediaDetailStateLoadedCopyWithImpl<$Res>
    implements $MediaDetailStateLoadedCopyWith<$Res> {
  _$MediaDetailStateLoadedCopyWithImpl(this._self, this._then);

  final MediaDetailStateLoaded _self;
  final $Res Function(MediaDetailStateLoaded) _then;

  /// Create a copy of MediaDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? movie = null,
  }) {
    return _then(MediaDetailStateLoaded(
      null == movie
          ? _self.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ));
  }

  /// Create a copy of MediaDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MovieCopyWith<$Res> get movie {
    return $MovieCopyWith<$Res>(_self.movie, (value) {
      return _then(_self.copyWith(movie: value));
    });
  }
}

/// @nodoc

class MediaDetailStateError implements MediaDetailState {
  const MediaDetailStateError(this.failure);

  final RequestFailure failure;

  /// Create a copy of MediaDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MediaDetailStateErrorCopyWith<MediaDetailStateError> get copyWith =>
      _$MediaDetailStateErrorCopyWithImpl<MediaDetailStateError>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MediaDetailStateError &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @override
  String toString() {
    return 'MediaDetailState.error(failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $MediaDetailStateErrorCopyWith<$Res>
    implements $MediaDetailStateCopyWith<$Res> {
  factory $MediaDetailStateErrorCopyWith(MediaDetailStateError value,
          $Res Function(MediaDetailStateError) _then) =
      _$MediaDetailStateErrorCopyWithImpl;
  @useResult
  $Res call({RequestFailure failure});

  $RequestFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$MediaDetailStateErrorCopyWithImpl<$Res>
    implements $MediaDetailStateErrorCopyWith<$Res> {
  _$MediaDetailStateErrorCopyWithImpl(this._self, this._then);

  final MediaDetailStateError _self;
  final $Res Function(MediaDetailStateError) _then;

  /// Create a copy of MediaDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? failure = null,
  }) {
    return _then(MediaDetailStateError(
      null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as RequestFailure,
    ));
  }

  /// Create a copy of MediaDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestFailureCopyWith<$Res> get failure {
    return $RequestFailureCopyWith<$Res>(_self.failure, (value) {
      return _then(_self.copyWith(failure: value));
    });
  }
}

// dart format on
