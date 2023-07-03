import 'package:flutter/material.dart';
import 'package:web_app/components/my_outline_button.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/sections/about/components/about_text_with_sign.dart';

import '../components/about_section_text.dart';
import '../components/experience_card.dart';

class AboutMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              SizedBox(
                height: 30,
              ),
              AboutSectionText(
                text:
                    "I am an experienced full stack mobile developer with a passion for creating innovative solutions. With proficiency in Flutter (Android and iOS), Swift (iOS), C#, ASP.NET, Firebase, Docker, SQL, Git, microservices, and deployment to app stores, I have a strong track record of delivering high-quality mobile applications that consistently exceed client expectations.",
              ),
              // Expanded(
              //   child: AboutSectionText(
              //     text:
              //         "I am an experienced full stack mobile developer with a passion for creating innovative solutions. With proficiency in Flutter (Android and iOS), Swift (iOS), C#, ASP.NET, Firebase, Docker, SQL, Git, microservices, and deployment to app stores, I have a strong track record of delivering high-quality mobile applications that consistently exceed client expectations.",
              //   ),
              // ),
              SizedBox(
                height: 30,
              ),
              ExperienceCard(numOfExp: "04"),
              SizedBox(
                height: 30,
              ),
              AboutSectionText(
                text:
                    "I take pride in my ability to develop high-performing solutions that address unique challenges and provide seamless user experiences. \nWith a bachelor's degree in Electrical Engineering with First Class Honors from Kwara State University, I bring a strong technical foundation and a detail-oriented approach to my work.",
              ),
              // Expanded(
              //   child: AboutSectionText(
              //     text:
              //         "I take pride in my ability to develop high-performing solutions that address unique challenges and provide seamless user experiences. \nWith a bachelor's degree in Electrical Engineering with First Class Honors from Kwara State University, I bring a strong technical foundation and a detail-oriented approach to my work.",
              //   ),
              // ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 3),
          Wrap(
            spacing: 30,
            runSpacing: 40,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: [
              MyOutlineButton(
                imageSrc: "assets/images/hand.png",
                text: "Hire Me!",
                press: () {},
              ),
              // SizedBox(width: kDefaultPadding * 1.5),
              MyOutlineButton(
                imageSrc: "assets/images/download.png",
                text: "Download CV",
                press: () {},
                // width: 100,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
