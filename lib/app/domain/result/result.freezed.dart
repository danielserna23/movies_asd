// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Result<E, T> {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Result<E, T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Result<$E, $T>()';
  }
}

/// @nodoc
class $ResultCopyWith<E, T, $Res> {
  $ResultCopyWith(Result<E, T> _, $Res Function(Result<E, T>) __);
}

/// @nodoc

class Success<E, T> implements Result<E, T> {
  const Success(this.data);

  final T data;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SuccessCopyWith<E, T, Success<E, T>> get copyWith =>
      _$SuccessCopyWithImpl<E, T, Success<E, T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Success<E, T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'Result<$E, $T>.success(data: $data)';
  }
}

/// @nodoc
abstract mixin class $SuccessCopyWith<E, T, $Res>
    implements $ResultCopyWith<E, T, $Res> {
  factory $SuccessCopyWith(
          Success<E, T> value, $Res Function(Success<E, T>) _then) =
      _$SuccessCopyWithImpl;
  @useResult
  $Res call({T data});
}

/// @nodoc
class _$SuccessCopyWithImpl<E, T, $Res>
    implements $SuccessCopyWith<E, T, $Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success<E, T> _self;
  final $Res Function(Success<E, T>) _then;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
  }) {
    return _then(Success<E, T>(
      freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class Failure<E, T> implements Result<E, T> {
  const Failure(this.error);

  final E error;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FailureCopyWith<E, T, Failure<E, T>> get copyWith =>
      _$FailureCopyWithImpl<E, T, Failure<E, T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Failure<E, T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @override
  String toString() {
    return 'Result<$E, $T>.failure(error: $error)';
  }
}

/// @nodoc
abstract mixin class $FailureCopyWith<E, T, $Res>
    implements $ResultCopyWith<E, T, $Res> {
  factory $FailureCopyWith(
          Failure<E, T> value, $Res Function(Failure<E, T>) _then) =
      _$FailureCopyWithImpl;
  @useResult
  $Res call({E error});
}

/// @nodoc
class _$FailureCopyWithImpl<E, T, $Res>
    implements $FailureCopyWith<E, T, $Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure<E, T> _self;
  final $Res Function(Failure<E, T>) _then;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = freezed,
  }) {
    return _then(Failure<E, T>(
      freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as E,
    ));
  }
}

// dart format on
