import 'package:hive_ce_flutter/hive_flutter.dart';

import '../../../domain/models/media/media.dart';

class DbDataSource {
  static const String _boxName = 'favorites';
  late Box<Media> _favoriteMoviesBox;

  DbDataSource() {
    _initialize();
  }

  Future<void> _initialize() async {
    await Hive.initFlutter();
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(MediaAdapter());
    }
    _favoriteMoviesBox = await Hive.openBox<Media>(_boxName);
  }

  Future<List<Media>> loadMovies({int offset = 0, int limit = 20}) async {
    await _ensureBoxInitialized();
    final allMovies = _favoriteMoviesBox.values.cast<Media>().toList();
    final endIndex = (offset + limit).clamp(0, allMovies.length);
    return allMovies.sublist(offset, endIndex);
  }

  Future<bool> isMovieFavorite(int id) async {
    await _ensureBoxInitialized();
    return _favoriteMoviesBox.containsKey(id);
  }

  Future<void> toggleFavorite(Media movie) async {
    await _ensureBoxInitialized();
    if (await isMovieFavorite(movie.id)) {
      await _favoriteMoviesBox.delete(movie.id);
    } else {
      await _favoriteMoviesBox.put(movie.id, movie);
    }
  }

  Future<void> _ensureBoxInitialized() async {
    if (!Hive.isBoxOpen(_boxName)) {
      await _initialize();
    }
  }
}
