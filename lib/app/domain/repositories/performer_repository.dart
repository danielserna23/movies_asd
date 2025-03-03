import '../typedefs.dart';

abstract class PerformerRepository {
  Future<ResultPerformer> getCastByMovie(int movieId);
}
