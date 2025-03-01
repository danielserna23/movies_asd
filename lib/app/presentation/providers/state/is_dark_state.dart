import 'package:freezed_annotation/freezed_annotation.dart';

part 'is_dark_state.freezed.dart';

@freezed
abstract class IsDarkMode with _$IsDarkMode {
  factory IsDarkMode({
    @Default(false) bool isDarkMode,
  }) = _IsDarkMode;
}
