import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:web_app/sections/topSection/components/dark_mode_switch.dart';

import '../../animations/entrance_fader.dart';
import '../../animations/zoom_animation.dart';
import '../../components/store_utils.dart';
import '../../responsive/responsive_size copy.dart';
import '../../style/app_typography.dart';
import '../../utils/color_chage_btn.dart';
import '../../utils/img.dart';
import '../../utils/links.dart';
import '../../utils/space.dart';
import 'widgets/animation_text.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: isDark
            ? AssetImage("assets/images/bg_img_2.png")
            : AssetImage("assets/images/background.png"),
        // opacity: 0.8,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      )),
      height: 40.h,
      child: Stack(
        children: [
          Positioned(top: 10, right: 10, child: DarkModeSwitch()),
          Positioned(
              top: 20,
              left: 20,
              child: Container(
                  height: 40,
                  width: 40,
                  child: Image.asset("assets/images/logo_A1.png"))),
          Padding(
            padding: EdgeInsets.only(left: 10.w, top: 10.h, right: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      ConstantStrings.hellotag,
                      style: AppText.h3!.copyWith(
                        fontSize: isFontSize(context, 16),
                        color: Color(0xFFFFF8F2),
                      ),
                    ),
                    // Space.x!,
                    Image.asset(StaticImage.hi, height: 10.sp),
                  ],
                ),
                // Space.y(1.w)!,
                Text(
                  ConstantStrings.yourname,
                  style: TextStyle(
                    fontSize: isFontSize(context, 28),
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFFFF8F2),
                  ),
                ),
                Space.y(1.w)!,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "A ",
                      style: TextStyle(
                        fontSize: isFontSize(context, 18),
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFF8F2),
                      ),
                    ),
                    AnimatedTextKit(
                      animatedTexts: mobileList,
                      repeatForever: true,
                      isRepeatingAnimation: true,
                    ),
                  ],
                ),

                Space.y(2.w)!,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColorChageButton(
                      isWhite: isDark ? false : true,
                      text: 'download cv',
                      onTap: () {
                        StoreUtils.launchWeb(
                            "https://drive.google.com/file/d/1msJVJREJtvISFrrZ8NKyrgCwMq_-9itc/view?usp=sharing");
                      },
                    ),
                    const EntranceFader(
                      offset: Offset(0, 0),
                      delay: Duration(seconds: 1),
                      duration: Duration(milliseconds: 800),
                      child: ZoomAnimations(),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
