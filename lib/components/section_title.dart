import 'package:flutter/material.dart';
import 'package:web_app/responsive/responsive.dart';

import '../constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.color,
      respo})
      : super(key: key);

  final String title, subTitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Responsive.isDesktop(context) ? 0 : 40.0),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
        constraints: BoxConstraints(maxWidth: 1110),
        height: 100,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: kDefaultPadding),
              padding: EdgeInsets.only(bottom: 72),
              width: 8,
              height: 100,
              color: Colors.black,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: color,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  subTitle,
                  style:
                      TextStyle(fontWeight: FontWeight.w200, color: kTextColor),
                ),
                Responsive.isMobile(context)
                    ? Text(
                        title,
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 30),
                      )
                    : Text(
                        title,
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                      )
              ],
            )
          ],
        ),
      ),
    );
  }
}
