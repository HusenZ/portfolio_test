import 'package:flutter/material.dart';
import 'package:portfolio_ui/core/theme/colors_manager.dart';
import 'package:portfolio_ui/core/theme/fonts_manager.dart';
import 'package:sizer/sizer.dart';

ColorScheme kColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.light,
  seedColor: AppColor.primaryColor,
);
ThemeData getApplicationTheme() {
  return ThemeData(
    fontFamily: 'Roboto',
    fontFamilyFallback: const ['AppFonts'],
    colorScheme: kColorScheme,
    primaryColor: AppColor.primaryColor,
    appBarTheme: const AppBarTheme().copyWith(
      color: kColorScheme.onPrimaryContainer,
      foregroundColor: kColorScheme.onSecondary,
    ),
    textTheme: TextTheme(
      bodyLarge: getExtraBold(
        fontSize: 18.sp,
        color: AppColor.fontColor,
      ),
      displayMedium: getSemiBoldStyle(
        fontSize: 18.sp,
        color: AppColor.fontColor,
      ),
    ),
  );
}
