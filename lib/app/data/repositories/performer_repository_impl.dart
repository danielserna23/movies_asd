import '../../domain/repositories/performer_repository.dart';
import '../../domain/typedefs.dart';
import '../services/remote/performer_api.dart';

class PerformerRepositoryImpl implements PerformerRepository {
  final PerformerApi _performerApi;

  PerformerRepositoryImpl(this._performerApi);
  @override
  Future<ResultPerformer> getCastByMovie(int movieId) {
    return _performerApi.getCastByMovie(movieId);
  }
}
