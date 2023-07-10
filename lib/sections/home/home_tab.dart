import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:web_app/sections/home/widgets/animation_text.dart';
import 'package:web_app/sections/topSection/components/dark_mode_switch.dart';
import 'package:web_app/theme/app_theme.dart';
import 'package:web_app/utils/links.dart';

import '../../animations/entrance_fader.dart';
import '../../animations/zoom_animation.dart';
import '../../components/store_utils.dart';
import '../../responsive/responsive_size copy.dart';
import '../../style/app_typography.dart';
import '../../utils/color_chage_btn.dart';
import '../../utils/img.dart';
import '../../utils/space.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

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
      height: 60.h,
      child: Stack(
        children: [
          Positioned(right: 5.w, top: 2.w, child: DarkModeSwitch()),
          Positioned(
              top: 2.w,
              left: 5.w,
              child: Container(
                  height: 60,
                  width: 60,
                  child: Image.asset("assets/images/logo_A1.png"))),
          Positioned(
            right: 10.w,
            bottom: 20.w,
            child: const EntranceFader(
              offset: Offset(0, 0),
              delay: Duration(seconds: 1),
              duration: Duration(milliseconds: 800),
              child: ZoomAnimations(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, top: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      ConstantStrings.hellotag,
                      style: AppText.h3!.copyWith(
                        fontSize: isFontSize(context, 18),
                        color: Color(0xFFFFF8F2),
                      ),
                    ),
                    EntranceFader(
                      offset: const Offset(0, 0),
                      delay: const Duration(seconds: 2),
                      duration: const Duration(milliseconds: 800),
                      child: Image.asset(StaticImage.hi, height: 10.sp),
                    ),
                  ],
                ),
                // horizontalSpacer(1),
                Space.y(2.w)!,
                Text(
                  ConstantStrings.yourname,
                  style: TextStyle(
                    fontSize: isFontSize(context, 38),
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFFFF8F2),
                  ),
                ),
                EntranceFader(
                  offset: const Offset(-10, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "A ",
                        style: TextStyle(
                            fontSize: isFontSize(context, 24),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFF8F2)),
                      ),
                      AnimatedTextKit(
                        animatedTexts: tabList,
                        isRepeatingAnimation: true,
                      ),
                    ],
                  ),
                ),
                Space.y(3.w)!,
                Padding(
                  padding: EdgeInsets.only(right: 50.w),
                  child: Text(
                    ConstantStrings.miniDescription,
                    style: TextStyle(
                      fontSize: isFontSize(context, 16),
                      fontWeight: FontWeight.w100,
                      color: isDark
                          ? theme.textColor
                          : Color(0xFFFFF8F2).withOpacity(0.7),
                    ),
                  ),
                ),
                Space.y(4.w)!,
                ColorChageButton(
                  isWhite: isDark ? false : true,
                  text: 'download cv',
                  onTap: () {
                    StoreUtils.launchWeb(
                        "https://drive.google.com/file/d/1msJVJREJtvISFrrZ8NKyrgCwMq_-9itc/view?usp=sharing");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
