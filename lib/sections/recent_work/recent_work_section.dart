import 'package:flutter/material.dart';
import 'package:web_app/components/hireme_card.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/models/RecentWork.dart';
import 'package:web_app/sections/recent_work/responsive/recent_work_card_desktop.dart';
import 'package:web_app/sections/recent_work/responsive/recent_work_card_mobile.dart';
import 'package:web_app/sections/recent_work/responsive/recent_work_card_tablet.dart';

import '../../responsive/responsive.dart';

class RecentWorkSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      // just for demo
      // height: 600,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF).withOpacity(0.3),
        // color: Color(0xFFF7E8FF),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/recent_work_bg.png"),
        ),
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: Offset(0, -80),
            child: HireMeCard(),
          ),
          SectionTitle(
            title: "Recent Works",
            subTitle: "My Strong Arenas",
            color: Color(0xFFFFB100),
          ),
          SizedBox(height: kDefaultPadding * 1.5),
          SizedBox(
              width: 1110,
              child: Column(
                children: List.generate(
                    recentWorks.length,
                    (index) => Responsive(
                          mobile: MobileRecentWorkCard(
                            index: index,
                          ),
                          tablet: TabletRecentWorkCard(
                            index: index,
                          ),
                          desktop: DesktopRecentWorkCard(
                            index: index,
                          ),
                        )),
              )

              // Wrap(
              //   spacing: kDefaultPadding,
              //   runSpacing: kDefaultPadding * 2,
              //   children: List.generate(
              //     recentWorks.length,
              //     (index) => RecentWorkCard(index: index, press: () {}),
              //   ),
              // ),
              ),
          SizedBox(height: kDefaultPadding * 5),
        ],
      ),
    );
  }
}
