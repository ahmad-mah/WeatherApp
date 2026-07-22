import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/core/network/api_client.dart';
import 'package:weather_app/core/network/app_network.dart';

final apiClientProvider = Provider<ApiClient>((_) => AppNetwork.create());
