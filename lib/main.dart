import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/data/repositories/preferences_repository_impl.dart';
import 'app/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await dotenv.load();
  final preferences = await SharedPreferences.getInstance();

  final systemDarkMode =
      WidgetsBinding.instance.platformDispatcher.platformBrightness ==
          Brightness.dark;

  final preferencesRepository =
      PreferencesRepositoryImpl(preferences, systemDarkMode);

  runApp(
    ProviderScope(
      overrides: [
        preferencesRepositoryProvider.overrideWithValue(preferencesRepository),
      ],
      child: const MyApp(),
    ),
  );
}
