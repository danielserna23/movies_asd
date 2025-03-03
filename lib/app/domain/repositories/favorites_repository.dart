import '../models/media/media.dart';

abstract class FavoritesRepository {
  Future<bool> isFavorite(int movieId);
  Future<void> toggleFavorite(Media movie);
  Future<List<Media>> getFavorites({int offset = 0, int limit = 20});
}
