import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'config/routes/app_router.dart';
import 'config/theme/app_theme.dart';
import 'presentation/providers/theme/theme_provider.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);

    final isDarkMode = ref.watch(darkModeProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Movies ASD',
      routerConfig: appRouter,
      theme: getTheme(isDarkMode: isDarkMode),
    );
  }
}
