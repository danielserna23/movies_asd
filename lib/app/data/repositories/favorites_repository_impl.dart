import '../../domain/models/media/media.dart';
import '../../domain/repositories/favorites_repository.dart';
import '../services/local/db_datasource.dart';

class FavoritesRepositoryImpl implements FavoritesRepository {
  final DbDataSource _dataSource;

  FavoritesRepositoryImpl(this._dataSource);

  @override
  Future<List<Media>> getFavorites({int offset = 0, int limit = 20}) {
    return _dataSource.loadMovies(offset: offset, limit: limit);
  }

  @override
  Future<bool> isFavorite(int movieId) {
    return _dataSource.isMovieFavorite(movieId);
  }

  @override
  Future<void> toggleFavorite(Media movie) async {
    return await _dataSource.toggleFavorite(movie);
  }
}
