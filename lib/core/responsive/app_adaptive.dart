import 'package:flutter/material.dart';
import 'package:weather_app/core/responsive/app_breakpoints.dart';

abstract final class AppAdaptive {
  static bool isMobile(BuildContext context) =>
    MediaQuery.sizeOf(context).width < AppBreakpoints.mobile;

  static bool isTablet(BuildContext context) {
    final w = MediaQuery.sizeOf(context).width;
    return w >= AppBreakpoints.mobile && w < AppBreakpoints.largeTablet;
  }

  static bool isLargeTablet(BuildContext context) {
    final w = MediaQuery.sizeOf(context).width;
    return w >= AppBreakpoints.largeTablet && w < AppBreakpoints.desktop;
  }

  static bool isDesktop(BuildContext context) =>
    MediaQuery.sizeOf(context).width >= AppBreakpoints.desktop;
}
