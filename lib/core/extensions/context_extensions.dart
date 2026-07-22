import 'package:flutter/material.dart';
import 'package:weather_app/core/responsive/app_adaptive.dart';

extension ContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colors => Theme.of(this).colorScheme;
  TextTheme get text => Theme.of(this).textTheme;
  bool get isMobile => AppAdaptive.isMobile(this);
  bool get isTablet => AppAdaptive.isTablet(this);
}
