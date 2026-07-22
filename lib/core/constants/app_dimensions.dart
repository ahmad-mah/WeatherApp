import 'package:flutter/material.dart';

abstract final class AppDimensions {
  // Spacing scale — design system tokens only
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;
  static const double xxl = 48;

  // Convenience EdgeInsets
  static const EdgeInsets allSm = EdgeInsets.all(sm);
  static const EdgeInsets allMd = EdgeInsets.all(md);
  static const EdgeInsets allLg = EdgeInsets.all(lg);
  static const EdgeInsets horizontalSm = EdgeInsets.symmetric(horizontal: sm);
  static const EdgeInsets horizontalMd = EdgeInsets.symmetric(horizontal: md);
  static const EdgeInsets horizontalLg = EdgeInsets.symmetric(horizontal: lg);
  static const EdgeInsets verticalSm = EdgeInsets.symmetric(vertical: sm);
  static const EdgeInsets verticalMd = EdgeInsets.symmetric(vertical: md);

  // Border radius from design
  static const double radiusSm = 16;
  static const double radiusMd = 24;
  static const double radiusLg = 32;
  static const double radiusXl = 48;
  static const double radiusFull = 9999;

  // Elevation shadows from design
  static final List<BoxShadow> elevation1 = [
    BoxShadow(
      offset: const Offset(0, 1),
      blurRadius: 2,
      color: Colors.black.withValues(alpha: 0.05),
    ),
  ];

  static final List<BoxShadow> elevation2 = [
    BoxShadow(
      offset: const Offset(0, 4),
      blurRadius: 3,
      color: Colors.black.withValues(alpha: 0.07),
    ),
    BoxShadow(
      offset: const Offset(0, 2),
      blurRadius: 2,
      color: Colors.black.withValues(alpha: 0.06),
    ),
  ];

  static final List<BoxShadow> elevation3 = [
    BoxShadow(
      blurRadius: 8,
      color: const Color(0xFFf2ca50).withValues(alpha: 0.5),
    ),
  ];

  static final List<BoxShadow> elevation4 = [
    BoxShadow(
      blurRadius: 8,
      color: const Color(0xFFe9c349).withValues(alpha: 0.5),
    ),
  ];

  static final List<BoxShadow> elevation5 = [
    BoxShadow(
      offset: const Offset(0, 10),
      blurRadius: 20,
      color: const Color(0xFFf2ca50).withValues(alpha: 0.3),
    ),
  ];

  static final List<BoxShadow> elevation6 = [
    BoxShadow(
      offset: const Offset(0, 10),
      blurRadius: 20,
      color: const Color(0xFFf2ca50).withValues(alpha: 0.2),
    ),
  ];

  static final List<BoxShadow> elevation7 = [
    BoxShadow(
      offset: const Offset(0, 10),
      blurRadius: 30,
      spreadRadius: -10,
      color: Colors.black.withValues(alpha: 0.1),
    ),
  ];

  static final List<BoxShadow> elevation8 = [
    BoxShadow(
      offset: const Offset(0, 15),
      blurRadius: 30,
      spreadRadius: -10,
      color: Colors.black.withValues(alpha: 0.3),
    ),
  ];

  static final List<BoxShadow> elevation9 = [
    BoxShadow(
      blurRadius: 30,
      color: const Color(0xFFf2ca50).withValues(alpha: 0.3),
    ),
  ];

  static final List<BoxShadow> elevation10 = [
    BoxShadow(
      offset: const Offset(0, 20),
      blurRadius: 40,
      color: Colors.black.withValues(alpha: 0.15),
    ),
  ];

  static final List<BoxShadow> elevation11 = [
    BoxShadow(
      offset: const Offset(0, 20),
      blurRadius: 40,
      spreadRadius: -15,
      color: Colors.black.withValues(alpha: 0.3),
    ),
  ];

  static final List<BoxShadow> elevation12 = [
    BoxShadow(
      offset: const Offset(0, 20),
      blurRadius: 40,
      spreadRadius: -10,
      color: Colors.black.withValues(alpha: 0.15),
    ),
  ];

  static final List<BoxShadow> elevation13 = [
    BoxShadow(
      offset: const Offset(0, 30),
      blurRadius: 60,
      spreadRadius: -15,
      color: Colors.black.withValues(alpha: 0.4),
    ),
  ];
}
