import '../repositories/performer_repository.dart';
import '../typedefs.dart';

class PerformerUseCase {
  final PerformerRepository _performerRepository;

  PerformerUseCase(this._performerRepository);

  Future<ResultPerformer> getCastByMovie(int movieId) async =>
      _performerRepository.getCastByMovie(movieId);
}
