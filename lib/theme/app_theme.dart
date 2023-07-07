import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../color/colors.dart';

class AppTheme {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return isDarkTheme ? ThemeColors.darkTheme : ThemeColors.lightTheme;
  }
}

class ThemeColors {
  const ThemeColors._();
  static final lightTheme = ThemeData(
      brightness: Brightness.light,
      fontFamily: 'Poppins',
      primaryColor: primaryColor,

      // scaffoldBackgroundColor: lightBackgroundColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: AppBarTheme(
        backgroundColor: lightBackgroundColor,
      ),
      textTheme: TextTheme(
        labelLarge: TextStyle(
          color: lightTextColor,
        ),
        displaySmall: TextStyle(color: lightTextColor),
        bodySmall: TextStyle(color: lightTextColor),
        bodyLarge: TextStyle(color: lightTextColor),
        bodyMedium: TextStyle(color: lightTextColor),
        displayLarge: TextStyle(color: lightTextColor),
        displayMedium: TextStyle(color: lightTextColor),
      ),
      colorScheme: ColorScheme.light(background: Colors.white));

  static final darkTheme = ThemeData(
      brightness: Brightness.dark,
      fontFamily: 'Poppins',
      primaryColor: primaryColor,
      // scaffoldBackgroundColor: const Color(0xFF00040F),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: TextTheme(
        labelLarge: TextStyle(color: darkTextColor),
        displaySmall: TextStyle(color: darkTextColor),
        labelSmall: TextStyle(color: darkTextColor),
        titleSmall: TextStyle(color: darkTextColor),
        headlineSmall: TextStyle(color: darkTextColor),

        bodySmall: TextStyle(color: darkTextColor),
        bodyLarge: TextStyle(color: darkTextColor),
        bodyMedium: TextStyle(color: darkTextColor),
        displayLarge: TextStyle(color: darkTextColor),
        displayMedium: TextStyle(color: darkTextColor),
        // headlineSmall: TextStyle(color: darkTextColor),
        // labelLarge: TextStyle(color: darkTextColor),
        // labelLarge: TextStyle(color: darkTextColor),
        // labelLarge: TextStyle(color: darkTextColor),
        // labelLarge: TextStyle(color: darkTextColor),
        // labelLarge: TextStyle(color: darkTextColor),
        // labelLarge: TextStyle(color: darkTextColor),labelLarge: TextStyle(color: darkTextColor),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: darkBackgroundColor,
      ),
      colorScheme: ColorScheme.dark(background: Colors.black)
      // ,
      );
  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance.window.platformBrightness;
}

extension ThemeExtras on ThemeData {
  Color get navBarColor => brightness == Brightness.light
      ? const Color(0xffF0F0F0)
      : const Color(0xFF00040F);
  //
  Color get textColor => brightness == Brightness.light
      // ? const Color(0xFF403930)
      ? const Color(0xFF707070)
      : const Color(0xFFFFF8F2);

  Color get reverseTextColor => brightness == Brightness.light
      // ? const Color(0xFF403930)
      ? const Color(0xFFFFF8F2)
      : const Color(0xFF707070);

  Color get textColor2 => brightness == Brightness.light
      // ? const Color(0xFF403930)
      ? const Color(0xFF000000)
      : const Color(0xFFFFFFFF);

  Color get textSubColor => brightness == Brightness.light
      // ? const Color(0xFF403930)
      ? const Color(0xFF707070)
      : const Color(0xFFFFF8F2);

  Color get expCardLightBg => brightness == Brightness.light
      ? const Color(0xFFEDD2FC)
      : const Color(0xFFDDB2E5);

  Color get expCardLighterBg => brightness == Brightness.light
      ? const Color(0xFFF7E8FF)
      : const Color(0xFFD8C8E5);
  //
  Color get secondaryColor => const Color(0xFFFE53BB);
  //
  Gradient get serviceCard =>
      brightness == Brightness.light ? grayWhite : grayBack;

  //
  Gradient get contactCard =>
      brightness == Brightness.light ? grayWhite : contactGradi;
}
