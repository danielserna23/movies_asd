import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

import '../../domain/result/result.dart';
import 'api_adapter.dart';
import 'http_method_enum.dart';

part 'api_failure.dart';
part 'logs.dart';
part 'parse_response_body.dart';

class ApiSource implements ApiAdapter {
  final Client _client;
  final String _baseUrl;
  final String _apiKey;

  ApiSource({
    required Client client,
    required String baseUrl,
    required String apiKey,
  })  : _client = client,
        _baseUrl = baseUrl,
        _apiKey = apiKey;

  @override
  Future<Result<ApiFailure, R>> request<R>(
    String path, {
    required R Function(dynamic responseBody) onSuccess,
    HttpMethod method = HttpMethod.get,
    Map<String, String> headers = const {},
    Map<String, String> queryParameters = const {},
    Map<String, dynamic> body = const {},
    bool useApikey = true,
    Duration timeOut = const Duration(seconds: 10),
  }) async {
    Map<String, dynamic> logs = {};
    StackTrace? stackTrace;
    try {
      if (useApikey) {
        queryParameters = {...queryParameters, 'api_key': _apiKey};
      }
      Uri url = Uri.parse(
        path.startsWith('http') ? path : '$_baseUrl$path',
      );
      if (queryParameters.isNotEmpty) {
        url = url.replace(queryParameters: queryParameters);
      }

      headers = {
        'Content-Type': 'application/json',
        ...headers,
      };

      final bodyString = jsonEncode(body);

      logs = {
        'url': url.toString(),
        'method': method.name,
        'body': body,
        'startTime': DateTime.now().toString(),
      };

      final Response response = switch (method) {
        HttpMethod.get => await _client.get(url).timeout(timeOut),
        HttpMethod.post => await _client
            .post(
              url,
              headers: headers,
              body: bodyString,
            )
            .timeout(timeOut),
        HttpMethod.patch => await _client
            .patch(
              url,
              headers: headers,
              body: bodyString,
            )
            .timeout(timeOut),
        HttpMethod.delete => await _client
            .delete(
              url,
              headers: headers,
              body: bodyString,
            )
            .timeout(timeOut),
        HttpMethod.put => await _client
            .put(
              url,
              headers: headers,
              body: bodyString,
            )
            .timeout(timeOut),
      };

      final statusCode = response.statusCode;
      final responseBody = _parseResponseBody(response.body);

      logs = {
        ...logs,
        'statusCode': statusCode,
        'responseBody': responseBody,
      };

      if (statusCode >= 200 && statusCode < 300) {
        return Result.success(onSuccess(responseBody));
      }
      return Result.failure(
        ApiFailure(statusCode: statusCode, data: responseBody),
      );
    } catch (e, s) {
      stackTrace = s;
      logs = {
        ...logs,
        'exception': e.runtimeType.toString(),
      };
      if (e is SocketException || e is ClientException) {
        logs = {
          ...logs,
          'exception': 'NetworkException',
        };
        return Result.failure(
          ApiFailure(
            exception: NetworkException(),
          ),
        );
      }
      return Result.failure(ApiFailure(exception: e));
    } finally {
      logs = {
        ...logs,
        'endTime': DateTime.now().toString(),
      };
      _printLogs(logs, stackTrace);
    }
  }
}
