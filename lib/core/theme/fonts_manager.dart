import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FontConstant {
  static const String fontFamily = "Roboto";
}

TextStyle _getTextStyle(
  double fontSize,
  String fontFamily,
  Color color,
  FontWeight fontWeight,
) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    color: color,
    fontWeight: fontWeight,
  );
}

class FontWeightManager {
  static const FontWeight bold = FontWeight.w400;
  static const FontWeight semiBold = FontWeight.w300;
  static const FontWeight normal = FontWeight.normal;
}

class FontSize {
  static double s10 = 10.sp;
  static double s11 = 11.sp;
  static double s12 = 12.sp;
  static double s13 = 13.sp;
  static double s14 = 14.sp;
}

TextStyle getExtraBold({required double fontSize, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamily,
    color,
    FontWeightManager.bold,
  );
}

TextStyle getSemiBoldStyle({required double fontSize, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamily,
    color,
    FontWeightManager.semiBold,
  );
}
