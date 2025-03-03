import '../../../domain/failures/request_failure/request_failure.dart';
import '../../../domain/models/performer/performer.dart';
import '../../../domain/result/result.dart';
import '../../../domain/typedefs.dart';
import '../../api_source/api_source.dart';
import '../utils/handle_failure.dart';

class PerformerApi {
  final ApiSource _apiSource;

  PerformerApi(this._apiSource);

  Future<ResultPerformer> getCastByMovie(int movieId) async {
    final result = await _apiSource.request(
      '/movie/$movieId/credits',
      onSuccess: (json) {
        final list = List<Json>.from(json['cast']);
        final performers = list
            .where(
          (e) =>
              e['known_for_department'] == 'Acting' &&
              e['profile_path'] != null,
        )
            .map(
          (item) {
            return Performer.fromJson(item);
          },
        ).toList();
        return performers;
      },
    );

    return switch (result) {
      Success(data: final performerList) => Result.success(performerList),
      Failure(error: final apiFailure) => handleHttpFailure(apiFailure),
      _ => Result.failure(RequestFailure.unknown())
    };
  }
}
