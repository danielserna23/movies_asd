import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/presentation.dart';
import '../../presentation/screens/movies_detail_screen.dart';
import 'routes.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: Routes.home,
        builder: (context, state) => const HomeMoviesScreen(),
      ),
      GoRoute(
        path: '/movie/:id',
        name: Routes.movieDetail,
        builder: (context, state) {
          final movieId = state.pathParameters['id'] ?? '0';
          return MoviesDetailScreen(mediaId: int.parse(movieId));
        },
      ),
    ],
  );
});
