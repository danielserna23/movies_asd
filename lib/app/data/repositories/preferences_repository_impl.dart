import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/repositories/preferences_repository.dart';

class PreferencesRepositoryImpl extends PreferencesRepository {
  final SharedPreferences _preferences;
  final bool _systemDarkMode;

  PreferencesRepositoryImpl(this._preferences, this._systemDarkMode);

  @override
  bool get isDarkMode => _preferences.getBool('isDarkMode') ?? _systemDarkMode;

  @override
  Future<void> setDartMode(bool isDarkMode) =>
      _preferences.setBool('isDarkMode', isDarkMode);
}

final preferencesRepositoryProvider = Provider<PreferencesRepository>((ref) {
  throw UnimplementedError("Provider must be overriden");
});
