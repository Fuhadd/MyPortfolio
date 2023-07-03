import 'package:flutter/material.dart';

import '../constants.dart';
import 'default_button.dart';

class HireMeCard extends StatelessWidget {
  final bool isMobile;
  const HireMeCard({
    Key? key,
    this.isMobile = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [kDefaultShadow],
      ),
      child: isMobile
          ? Row(
              children: [
                Image.asset(
                  "assets/images/email.png",
                  height: 80,
                  width: 80,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: SizedBox(
                    height: 80,
                    child: VerticalDivider(),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Starting New Project?",
                        style: TextStyle(
                            fontSize: 42, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: kDefaultPadding / 2),
                      Text(
                        "Get an estimate for the new project",
                        style: TextStyle(fontWeight: FontWeight.w200),
                      )
                    ],
                  ),
                ),
                DefaultButton(
                  text: "Hire Me!",
                  imageSrc: "assets/images/hand.png",
                  press: () {},
                )
              ],
            )
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Starting New Project?",
                          style: TextStyle(
                              fontSize: 42, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: kDefaultPadding / 2),
                        Text(
                          "Get an estimate for the new project",
                          style: TextStyle(fontWeight: FontWeight.w200),
                        )
                      ],
                    ),
                  ),
                  DefaultButton(
                    text: "Hire Me!",
                    imageSrc: "assets/images/hand.png",
                    press: () {},
                    width: 10,
                  )
                ],
              ),
            ),
    );
  }
}
