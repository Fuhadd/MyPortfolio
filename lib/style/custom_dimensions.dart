import 'package:flutter/material.dart';

class CustomDimensions {
  //margin
  static const largeMargin = 24.0;
  static const defaultMargin = 16.0;
  static const defaultPadding = 16.0;
  static const bigMargin = 14.0;
  static const mediumMargin = 12.0;
  static const mediumPadding = 12.0;
  static const smallMargin = 8.0;
  static const smallPadding = 8.0;

  //text sizes
  static const appBarTextSize = 24.0;
  static const subTitleTextSize = 24.0;
  static const bigTextSize = 18.0;
  static const big2TextSize = 20.0;
  static const buttonTextSize = 16.0;
  static const mediumTextSize = 14.0;
  static const smallTextSize = 12.0;
  static const tinyTextSize = 10.0;
}

double halfScreenHeight(context) {
  return MediaQuery.of(context).size.height * 0.65;
}
