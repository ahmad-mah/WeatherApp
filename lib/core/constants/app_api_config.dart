import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract final class AppApiConfig {
  static String get baseUrl => _get('API_BASE_URL');
  static String get apiKey => _get('API_KEY');

  static String _get(String key) {
    final value = dotenv.env[key];
    if (value == null) {
      throw StateError('$key not found in .env');
    }
    return value;
  }
}
