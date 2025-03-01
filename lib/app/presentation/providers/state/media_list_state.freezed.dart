// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MediaListState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MediaListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MediaListState()';
  }
}

/// @nodoc
class $MediaListStateCopyWith<$Res> {
  $MediaListStateCopyWith(MediaListState _, $Res Function(MediaListState) __);
}

/// @nodoc

class MediaListStateInitial implements MediaListState {
  const MediaListStateInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MediaListStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MediaListState.initial()';
  }
}

/// @nodoc

class MediaListStateLoading implements MediaListState {
  const MediaListStateLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MediaListStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MediaListState.loading()';
  }
}

/// @nodoc

class MediaListStateLoaded implements MediaListState {
  const MediaListStateLoaded(final List<Media> media) : _media = media;

  final List<Media> _media;
  List<Media> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  /// Create a copy of MediaListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MediaListStateLoadedCopyWith<MediaListStateLoaded> get copyWith =>
      _$MediaListStateLoadedCopyWithImpl<MediaListStateLoaded>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MediaListStateLoaded &&
            const DeepCollectionEquality().equals(other._media, _media));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_media));

  @override
  String toString() {
    return 'MediaListState.loaded(media: $media)';
  }
}

/// @nodoc
abstract mixin class $MediaListStateLoadedCopyWith<$Res>
    implements $MediaListStateCopyWith<$Res> {
  factory $MediaListStateLoadedCopyWith(MediaListStateLoaded value,
          $Res Function(MediaListStateLoaded) _then) =
      _$MediaListStateLoadedCopyWithImpl;
  @useResult
  $Res call({List<Media> media});
}

/// @nodoc
class _$MediaListStateLoadedCopyWithImpl<$Res>
    implements $MediaListStateLoadedCopyWith<$Res> {
  _$MediaListStateLoadedCopyWithImpl(this._self, this._then);

  final MediaListStateLoaded _self;
  final $Res Function(MediaListStateLoaded) _then;

  /// Create a copy of MediaListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? media = null,
  }) {
    return _then(MediaListStateLoaded(
      null == media
          ? _self._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>,
    ));
  }
}

/// @nodoc

class MediaListStateError implements MediaListState {
  const MediaListStateError(this.failure);

  final RequestFailure failure;

  /// Create a copy of MediaListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MediaListStateErrorCopyWith<MediaListStateError> get copyWith =>
      _$MediaListStateErrorCopyWithImpl<MediaListStateError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MediaListStateError &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @override
  String toString() {
    return 'MediaListState.error(failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $MediaListStateErrorCopyWith<$Res>
    implements $MediaListStateCopyWith<$Res> {
  factory $MediaListStateErrorCopyWith(
          MediaListStateError value, $Res Function(MediaListStateError) _then) =
      _$MediaListStateErrorCopyWithImpl;
  @useResult
  $Res call({RequestFailure failure});

  $RequestFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$MediaListStateErrorCopyWithImpl<$Res>
    implements $MediaListStateErrorCopyWith<$Res> {
  _$MediaListStateErrorCopyWithImpl(this._self, this._then);

  final MediaListStateError _self;
  final $Res Function(MediaListStateError) _then;

  /// Create a copy of MediaListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? failure = null,
  }) {
    return _then(MediaListStateError(
      null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as RequestFailure,
    ));
  }

  /// Create a copy of MediaListState
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
