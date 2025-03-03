import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/use_cases/favorite_use_case.dart';
import '../state/media_list_state.dart';
import 'favorites_provider.dart';

class FavoritesListNotifier extends StateNotifier<MediaListState> {
  final FavoriteUseCase _favoriteUseCase;

  FavoritesListNotifier(this._favoriteUseCase)
      : super(const MediaListState.initial()) {
    loadMovies();
  }

  Future<void> loadMovies() async {
    state = const MediaListState.loading();

    final result = await _favoriteUseCase.getFavorites();
    state = MediaListState.loaded(result);
  }

  Future<void> refreshMovies() async {
    loadMovies();
  }
}

final favoritesListProvider =
    StateNotifierProvider<FavoritesListNotifier, MediaListState>((ref) {
  final favoriteUseCase = ref.watch(favoritesUseCaseProvider);
  final notifier = FavoritesListNotifier(favoriteUseCase);
  return notifier;
});
