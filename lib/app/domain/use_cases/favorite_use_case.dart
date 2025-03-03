import '../models/media/media.dart';
import '../repositories/favorites_repository.dart';

class FavoriteUseCase {
  final FavoritesRepository _favoritesRepository;

  FavoriteUseCase(this._favoritesRepository);

  Future<List<Media>> getFavorites({int offset = 0, int limit = 20}) =>
      _favoritesRepository.getFavorites(offset: offset, limit: limit);

  Future<bool> isFavorite(int movieId) =>
      _favoritesRepository.isFavorite(movieId);

  Future<void> toggleFavorite(Media movie) async =>
      await _favoritesRepository.toggleFavorite(movie);
}
