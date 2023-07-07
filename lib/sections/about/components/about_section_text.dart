import 'package:flutter/material.dart';
import 'package:web_app/theme/app_theme.dart';

import '../../../constants.dart';

class AboutSectionText extends StatelessWidget {
  const AboutSectionText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    Color textColor = Theme.of(context).textColor;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        text,
        style:
            TextStyle(fontWeight: FontWeight.w200, color: textColor, height: 2),
      ),
    );
  }
}
