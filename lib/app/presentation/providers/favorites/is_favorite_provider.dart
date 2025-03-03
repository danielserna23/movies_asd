import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/models/media/media.dart';
import '../../../domain/use_cases/favorite_use_case.dart';
import 'favorites_list_provider.dart';
import 'favorites_provider.dart';

final isFavoriteProvider =
    StateNotifierProvider.family<FavoriteNotifier, bool, int>((ref, movieId) {
  final favoriteUseCase = ref.watch(favoritesUseCaseProvider);
  return FavoriteNotifier(favoriteUseCase, movieId, ref);
});

class FavoriteNotifier extends StateNotifier<bool> {
  final FavoriteUseCase favoriteUseCase;
  final int movieId;
  final Ref ref;

  FavoriteNotifier(this.favoriteUseCase, this.movieId, this.ref)
      : super(false) {
    _loadFavoriteStatus();
  }

  Future<void> _loadFavoriteStatus() async {
    final isFavorite = await favoriteUseCase.isFavorite(movieId);
    state = isFavorite;
  }

  Future<void> toggleFavorite(Media movie) async {
    await favoriteUseCase.toggleFavorite(movie);
    state = !state;
    ref.watch(favoritesListProvider.notifier).refreshMovies();
  }
}
