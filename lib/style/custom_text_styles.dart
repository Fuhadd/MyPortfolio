import 'package:flutter/material.dart';

import 'custom_colors.dart';
import 'custom_dimensions.dart';

class CustomStyle {
  static const defaultFont = "Roboto";

  static const textStyleBold = TextStyle(
    fontSize: CustomDimensions.bigTextSize,
    fontWeight: FontWeight.w700,
    fontFamily: defaultFont,
    color: CustomColors.blackColor,
  );

  static const textStyleBody1 = TextStyle(
    fontSize: CustomDimensions.mediumTextSize,
    fontWeight: FontWeight.w400,
    fontFamily: defaultFont,
    color: CustomColors.blackColor,
  );

  static const textStyleBody2 = TextStyle(
    fontSize: CustomDimensions.mediumTextSize,
    fontWeight: FontWeight.w600,
    fontFamily: defaultFont,
    color: CustomColors.blackColor,
  );

  static const textStyleBody3 = TextStyle(
    fontSize: CustomDimensions.bigTextSize,
    fontWeight: FontWeight.w700,
    fontFamily: defaultFont,
    color: CustomColors.blackColor,
  );

  static const textStyleBold4 = TextStyle(
    fontSize: CustomDimensions.big2TextSize,
    fontWeight: FontWeight.w700,
    fontFamily: defaultFont,
    // color: CustomColors.blackColor,
    color: CustomColors.mainBlueColor,
  );

  static const textFieldStyleBody2 = TextStyle(
    fontSize: CustomDimensions.mediumTextSize,
    fontWeight: FontWeight.w400,
    fontFamily: defaultFont,
    color: CustomColors.blackColor,
  );

  static const textStyleSmall = TextStyle(
    fontSize: CustomDimensions.smallTextSize,
    fontWeight: FontWeight.w500,
    fontFamily: defaultFont,
    color: CustomColors.blackColor,
  );
  static const textStyleMedium = TextStyle(
    fontSize: CustomDimensions.buttonTextSize,
    fontWeight: FontWeight.w700,
    fontFamily: defaultFont,
    color: CustomColors.blackColor,
  );
  static const textStyleButton = TextStyle(
    fontSize: CustomDimensions.buttonTextSize,
    fontWeight: FontWeight.w400,
    fontFamily: defaultFont,
    color: CustomColors.blackColor,
  );
}
