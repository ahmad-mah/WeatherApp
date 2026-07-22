import 'package:weather_app/core/constants/app_api_config.dart';
import 'package:weather_app/core/network/api_client.dart';
import 'package:weather_app/core/network/api_client_impl.dart';
import 'package:weather_app/core/network/app_interceptor.dart';
import 'package:weather_app/core/network/dio_factory.dart';

abstract final class AppNetwork {
  static ApiClient create() {
    final dio = DioFactory.create(
      baseUrl: AppApiConfig.baseUrl,
      interceptors: [const AppInterceptor()],
    );
    return ApiClientImpl(dio);
  }
}
