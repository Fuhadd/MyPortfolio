import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'custom_colors.dart';
import 'custom_text_styles.dart';

class AppTheme {
  static final defaultAppTheme = ThemeData(
    primaryColor: CustomColors.mainBlueColor,
    scaffoldBackgroundColor: CustomColors.whiteColor,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: CustomColors.mainBlueColor,
    ),
    appBarTheme: const AppBarTheme(
      color: CustomColors.whiteColor,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      titleTextStyle: TextStyle(
        color: CustomColors.blackColor,
        fontSize: 15,
        fontWeight: FontWeight.w700,
        fontFamily: 'Roboto',
      ),
      iconTheme: IconThemeData(color: CustomColors.blackColor),
      actionsIconTheme: IconThemeData(color: CustomColors.blackColor),
    ),
    dividerTheme: DividerThemeData(
      color: Colors.grey[300],
      thickness: 0.5,
      space: 0.5,
      indent: 10,
      endIndent: 10,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: CustomColors.mainPurpleColor,
    ),
    textTheme: const TextTheme(
      labelLarge: CustomStyle.textStyleButton,
      bodyLarge: CustomStyle.textStyleBody1,
      bodyMedium: CustomStyle.textStyleBody2,
    ),
    canvasColor: Colors.transparent,
    iconTheme: const IconThemeData(color: CustomColors.mainPurpleColor),
    fontFamily: 'Roboto',
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return CustomColors.mainBlueColor;
        }
        return null;
      }),
      trackColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return CustomColors.mainBlueColor;
        }
        return null;
      }),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return CustomColors.mainBlueColor;
        }
        return null;
      }),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return CustomColors.mainBlueColor;
        }
        return null;
      }),
    ),
  );
}
