import '../../domain/result/result.dart';
import 'api_source.dart';
import 'http_method_enum.dart';

abstract class ApiAdapter {
  Future<Result<ApiFailure, R>> request<R>(
    String path, {
    required R Function(dynamic responseBody) onSuccess,
    HttpMethod method,
    Map<String, String> headers,
    Map<String, String> queryParameters,
    Map<String, dynamic> body,
    bool useApikey,
    Duration timeOut,
  });
}
