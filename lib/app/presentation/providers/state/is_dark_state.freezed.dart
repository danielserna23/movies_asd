// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'is_dark_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IsDarkMode {
  bool get isDarkMode;

  /// Create a copy of IsDarkMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IsDarkModeCopyWith<IsDarkMode> get copyWith =>
      _$IsDarkModeCopyWithImpl<IsDarkMode>(this as IsDarkMode, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IsDarkMode &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkMode);

  @override
  String toString() {
    return 'IsDarkMode(isDarkMode: $isDarkMode)';
  }
}

/// @nodoc
abstract mixin class $IsDarkModeCopyWith<$Res> {
  factory $IsDarkModeCopyWith(
          IsDarkMode value, $Res Function(IsDarkMode) _then) =
      _$IsDarkModeCopyWithImpl;
  @useResult
  $Res call({bool isDarkMode});
}

/// @nodoc
class _$IsDarkModeCopyWithImpl<$Res> implements $IsDarkModeCopyWith<$Res> {
  _$IsDarkModeCopyWithImpl(this._self, this._then);

  final IsDarkMode _self;
  final $Res Function(IsDarkMode) _then;

  /// Create a copy of IsDarkMode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
  }) {
    return _then(_self.copyWith(
      isDarkMode: null == isDarkMode
          ? _self.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _IsDarkMode implements IsDarkMode {
  const _IsDarkMode({this.isDarkMode = false});

  @override
  @JsonKey()
  final bool isDarkMode;

  /// Create a copy of IsDarkMode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IsDarkModeCopyWith<_IsDarkMode> get copyWith =>
      __$IsDarkModeCopyWithImpl<_IsDarkMode>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IsDarkMode &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkMode);

  @override
  String toString() {
    return 'IsDarkMode(isDarkMode: $isDarkMode)';
  }
}

/// @nodoc
abstract mixin class _$IsDarkModeCopyWith<$Res>
    implements $IsDarkModeCopyWith<$Res> {
  factory _$IsDarkModeCopyWith(
          _IsDarkMode value, $Res Function(_IsDarkMode) _then) =
      __$IsDarkModeCopyWithImpl;
  @override
  @useResult
  $Res call({bool isDarkMode});
}

/// @nodoc
class __$IsDarkModeCopyWithImpl<$Res> implements _$IsDarkModeCopyWith<$Res> {
  __$IsDarkModeCopyWithImpl(this._self, this._then);

  final _IsDarkMode _self;
  final $Res Function(_IsDarkMode) _then;

  /// Create a copy of IsDarkMode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isDarkMode = null,
  }) {
    return _then(_IsDarkMode(
      isDarkMode: null == isDarkMode
          ? _self.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
