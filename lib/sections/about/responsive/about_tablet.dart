import 'package:flutter/material.dart';
import 'package:web_app/components/default_button.dart';
import 'package:web_app/components/my_outline_button.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/sections/about/components/about_text_with_sign.dart';

import '../components/about_section_text.dart';
import '../components/experience_card.dart';

class AboutTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      // constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 80.0, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AboutTextWithSign(),
                Expanded(
                  child: AboutSectionText(
                    text:
                        "I am an experienced full stack mobile developer with a passion for creating innovative solutions. With proficiency in Flutter (Android and iOS), Swift (iOS), C#, ASP.NET, Firebase, Docker, SQL, Git, microservices, and deployment to app stores, I have a strong track record of delivering high-quality mobile applications that consistently exceed client expectations.",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ExperienceCard(numOfExp: "04"),
              Expanded(
                child: AboutSectionText(
                  text:
                      "I take pride in my ability to develop high-performing solutions that address unique challenges and provide seamless user experiences. \nWith a bachelor's degree in Electrical Engineering with First Class Honors from Kwara State University, I bring a strong technical foundation and a detail-oriented approach to my work.",
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                imageSrc: "assets/images/hand.png",
                text: "Hire Me!",
                press: () {},
              ),
              SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                imageSrc: "assets/images/download.png",
                text: "Download CV",
                press: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
