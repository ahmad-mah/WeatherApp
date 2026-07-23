import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/features/home/presentation/providers/weather_provider.dart';

class SearchState {
  const SearchState({required this.text, required this.hasText});

  final String text;
  final bool hasText;
}

class SearchNotifier extends Notifier<SearchState> {
  Timer? _debounce;

  @override
  SearchState build() {
    ref.onDispose(() => _debounce?.cancel());
    return const SearchState(text: '', hasText: false);
  }

  void onTextChanged(String text) {
    state = SearchState(text: text, hasText: text.isNotEmpty);
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 800), () {});
  }

  void onSearch() {
    if (state.text.isNotEmpty) {
      ref.read(weatherProvider.notifier).fetchWeather(state.text);
    }
  }

  void onSearchByLocation() {
    ref.read(weatherProvider.notifier).fetchWeatherByLocation();
  }

  void clear() {
    _debounce?.cancel();
    state = const SearchState(text: '', hasText: false);
  }
}

final searchProvider =
    NotifierProvider<SearchNotifier, SearchState>(SearchNotifier.new);
