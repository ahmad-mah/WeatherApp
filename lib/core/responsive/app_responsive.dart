import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract final class AppResponsive {
  static double font(double size) => size.sp;
  static double width(double size) => size.w;
  static double height(double size) => size.h;
  static double radius(double size) => size.r;
}
