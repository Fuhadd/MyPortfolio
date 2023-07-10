import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:web_app/components/spacers.dart';
import 'package:web_app/sections/home/widgets/animation_text.dart';
import 'package:web_app/theme/app_theme.dart';

import '../../animations/entrance_fader.dart';
import '../../animations/zoom_animation.dart';
import '../../components/store_utils.dart';
import '../../responsive/responsive_size copy.dart';
import '../../utils/color_chage_btn.dart';
import '../../utils/img.dart';
import '../../utils/links.dart';
import '../../utils/space.dart';
import '../topSection/components/dark_mode_switch.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

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
        // opacity: 0.9,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      )),
      height: 80.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            verticalSpacer(20),
            // Align(alignment: Alignment.centerRight, child: DarkModeSwitch()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/logo_A1.png"),
                DarkModeSwitch()
              ],
            ),
            verticalSpacer(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10.h),
                  width: 55.w,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ConstantStrings.hellotag,
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w100,
                                color: Color(0xFFFFF8F2),
                              )),
                          EntranceFader(
                            offset: const Offset(0, 0),
                            delay: const Duration(seconds: 2),
                            duration: const Duration(milliseconds: 800),
                            child: Image.asset(StaticImage.hi, height: 40),
                          ),
                        ],
                      ),
                      Space.y(2.w)!,
                      Text(ConstantStrings.yourname,
                          style: const TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFFF8F2),
                          )),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text("A ",
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFFFF8F2),
                              )),
                          AnimatedTextKit(
                            isRepeatingAnimation: true,
                            repeatForever: true,
                            animatedTexts: desktopList,
                          ),
                        ],
                      ),
                      Space.y(3.5.w)!,
                      Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: Text(ConstantStrings.miniDescription,
                            style: TextStyle(
                              fontSize: isFontSize(context, 20),
                              fontWeight: FontWeight.w400,
                              color: isDark
                                  ? theme.textColor
                                  : Color(0xFFFFF8F2).withOpacity(0.7),
                            )),
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
                const ZoomAnimations(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
