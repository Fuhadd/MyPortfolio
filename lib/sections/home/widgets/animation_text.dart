import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:web_app/utils/links.dart';

import '../../../style/app_typography.dart';

List<TyperAnimatedText> desktopList = [
  TyperAnimatedText(ConstantStrings.animationtxt1,
      speed: const Duration(
        milliseconds: 50,
      ),
      textStyle: AppText.h2!.copyWith(
        fontSize: 32,
        color: Color(0xFFFFF8F2),
      )),
  TyperAnimatedText(ConstantStrings.animationtxt2,
      speed: const Duration(
        milliseconds: 50,
      ),
      textStyle: AppText.h2!.copyWith(
        fontSize: 32,
        color: Color(0xFFFFF8F2),
      )),
  TyperAnimatedText(ConstantStrings.animationtxt3,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(
        fontSize: 32,
        color: Color(0xFFFFF8F2),
      ))
];

List<TyperAnimatedText> tabList = [
  TyperAnimatedText(ConstantStrings.animationtxt1,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(
        fontSize: 20,
        color: Color(0xFFFFF8F2),
      )),
  TyperAnimatedText(ConstantStrings.animationtxt2,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(
        fontSize: 20,
        color: Color(0xFFFFF8F2),
      )),
  TyperAnimatedText(ConstantStrings.animationtxt3,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(
        fontSize: 20,
        color: Color(0xFFFFF8F2),
      ))
];
List<TyperAnimatedText> mobileList = [
  TyperAnimatedText(ConstantStrings.animationtxt1,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(
        fontSize: 16,
        color: Color(0xFFFFF8F2),
      )),
  TyperAnimatedText(ConstantStrings.animationtxt2,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(
        fontSize: 16,
        color: Color(0xFFFFF8F2),
      )),
  TyperAnimatedText(ConstantStrings.animationtxt3,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(
        fontSize: 16,
        color: Color(0xFFFFF8F2),
      ))
];
