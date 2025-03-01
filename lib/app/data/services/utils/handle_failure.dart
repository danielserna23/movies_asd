import '../../../domain/failures/request_failure/request_failure.dart';
import '../../../domain/result/result.dart';
import '../../api_source/api_source.dart';

Result<RequestFailure, R> handleHttpFailure<R>(ApiFailure apiFailure) {
  final failure = () {
    final statusCode = apiFailure.statusCode;
    switch (statusCode) {
      case 404:
        return RequestFailure.notFound();
      case 401:
        return RequestFailure.unauthorized();
      default:
        if (apiFailure.exception is NetworkException) {
          return RequestFailure.network();
        }
        return RequestFailure.unknown();
    }
  }();

  return Result.failure(failure);
}
