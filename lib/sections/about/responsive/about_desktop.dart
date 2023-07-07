import 'package:flutter/material.dart';
import 'package:web_app/components/default_button.dart';
import 'package:web_app/components/my_outline_button.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/sections/about/components/about_text_with_sign.dart';

import '../../../components/store_utils.dart';
import '../../../utils/send_mail.dart';
import '../components/about_section_text.dart';
import '../components/experience_card.dart';

class AboutDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      "I am an experienced full stack mobile developer with a passion for creating innovative solutions. With proficiency in Flutter (Android and iOS), Swift (iOS), C#, ASP.NET, Firebase, Docker, SQL, Git, microservices, and deployment to app stores, I have a strong track record of delivering high-quality mobile applications that consistently exceed client expectations.",
                ),
              ),
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
                press: () {
                  sendEmail();
                },
              ),
              SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                imageSrc: "assets/images/download.png",
                text: "Download CV",
                press: () {
                  StoreUtils.launchWeb(
                      "https://drive.google.com/file/d/1msJVJREJtvISFrrZ8NKyrgCwMq_-9itc/view?usp=sharing");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
