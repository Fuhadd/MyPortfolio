import 'package:flutter/material.dart';

import '../../../components/spacers.dart';
import 'on_hover_button.dart';

class InterestsContainer extends StatelessWidget {
  IconData icon;
  String title;
  InterestsContainer({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnHoverResumeButton(builder: (isHovered) {
      return isHovered
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 68,
                  height: 68,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF00B1FF)),
                  child: Icon(
                    icon,
                    size: 24,
                  ),
                ),
                verticalSpacer(20),
                Text(title)
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 68,
                  height: 68,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 3, color: Color(0xFF00B1FF))),
                  child: Icon(
                    icon,
                    color: Color(0xFF00B1FF),
                    size: 24,
                  ),
                ),
                verticalSpacer(20),
                const Text('')
              ],
            );
    });
  }
}
