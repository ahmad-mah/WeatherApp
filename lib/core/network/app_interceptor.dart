import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

final class AppInterceptor extends Interceptor {
  const AppInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    debugPrint('[HTTP] --> ${options.method} ${options.path}');
    debugPrint('[HTTP] Headers: ${options.headers}');
    if (options.queryParameters.isNotEmpty) {
      debugPrint('[HTTP] Query: ${options.queryParameters}');
    }
    if (options.data != null) {
      debugPrint('[HTTP] Body: ${options.data}');
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response<dynamic> response, ResponseInterceptorHandler handler) {
    debugPrint(
      '[HTTP] <-- ${response.statusCode} ${response.requestOptions.path}',
    );
    debugPrint('[HTTP] Response: ${response.data}');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint('[HTTP] ERROR ${err.type} ${err.requestOptions.path}');
    debugPrint('[HTTP] Message: ${err.message}');
    super.onError(err, handler);
  }
}
