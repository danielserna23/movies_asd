import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/repositories/preferences_repository_impl.dart';
import '../../../domain/repositories/preferences_repository.dart';

class DarkModeNotifier extends StateNotifier<bool> {
  final PreferencesRepository _preferencesRepository;

  DarkModeNotifier(this._preferencesRepository)
      : super(_preferencesRepository.isDarkMode);

  Future<void> toggleDarkMode() async {
    final newDarkMode = !state;
    await _preferencesRepository.setDartMode(newDarkMode);
    state = newDarkMode;
  }
}

final darkModeProvider = StateNotifierProvider<DarkModeNotifier, bool>((ref) {
  final preferencesRepository = ref.read(preferencesRepositoryProvider);
  return DarkModeNotifier(preferencesRepository);
});
