import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/repositories/favorites_repository_impl.dart';
import '../../../data/services/local/db_datasource.dart';
import '../../../domain/repositories/favorites_repository.dart';
import '../../../domain/use_cases/favorite_use_case.dart';

final favoritesUseCaseProvider = Provider<FavoriteUseCase>((ref) {
  final favoritesRepository = ref.watch(favoritesRepositoryProvider);
  return FavoriteUseCase(favoritesRepository);
});

final favoritesRepositoryProvider = Provider<FavoritesRepository>((ref) {
  return FavoritesRepositoryImpl(DbDataSource());
});
