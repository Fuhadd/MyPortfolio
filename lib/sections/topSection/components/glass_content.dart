import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:web_app/responsive/responsive.dart';

import '../../../constants.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
              constraints: !Responsive.isMobile(context)
                  ? BoxConstraints(maxWidth: 1110, maxHeight: size.height * 0.7)
                  : null,
              width: double.infinity,
              color: Colors.white.withOpacity(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hello There!",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: Color(0xFFFFF8F2)),
                  ),
                  Text(
                    "Aminu \nFuhad O.",
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                      // color: Theme.of(context).reverseTextColor,
                      color: Color(0xFFFFF8F2),
                      height: 1.5,
                    ),
                  ),
                  Text(
                    "Fullstack Mobile Developer",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: Color(0xFFFFF8F2)),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
