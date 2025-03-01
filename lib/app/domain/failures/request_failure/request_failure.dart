import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_failure.freezed.dart';

@freezed
class RequestFailure with _$RequestFailure {
  factory RequestFailure.notFound() = RequestFailureNotFound;
  factory RequestFailure.network() = RequestFailureNetwork;
  factory RequestFailure.unauthorized() = RequestFailureUnauthorized;
  factory RequestFailure.unknown() = RequestFailureUnknown;
}
