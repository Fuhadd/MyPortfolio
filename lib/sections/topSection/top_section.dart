import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/responsive/responsive.dart';

import 'components/dark_mode_switch.dart';
import 'components/logo_blur_box.dart';
import 'components/person_pic.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 750, minHeight: 700),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: isDark
              ? AssetImage("assets/images/bg_img_2.png")
              : AssetImage("assets/images/background.png"),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Responsive.isMobile(context)
            ? Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: PersonPic(),
                  ),
                  LogoAndBlurBox(size: size),
                  Positioned(
                    top: 0,
                    child: DarkModeSwitch(),
                  ),
                ],
              )
            : Stack(
                children: [
                  LogoAndBlurBox(size: size),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: PersonPic(),
                  ),
                  // LogoAndBlurBox(size: size),
                  Positioned(
                    top: 0,
                    child: DarkModeSwitch(),
                  ),
                ],
              ),
      ),
    );
  }
}
