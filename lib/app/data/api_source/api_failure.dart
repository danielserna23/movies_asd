part of 'api_source.dart';

class ApiFailure {
  final int? statusCode;
  final Object? exception;
  final Object? data;

  ApiFailure({
    this.statusCode,
    this.exception,
    this.data,
  });
}

class NetworkException {}
