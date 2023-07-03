import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';

import 'components/interest_container.dart';
import 'components/slide_animation_widget.dart';

class FeedbackSection extends StatefulWidget {
  @override
  State<FeedbackSection> createState() => _FeedbackSectionState();
}

class _FeedbackSectionState extends State<FeedbackSection>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));

    // if (widget.pixel > 800) {
    _animationController.forward();
    //   print(widget.pixel);
    // }

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            title: "My Interests",
            subTitle: "What I love doing",
            color: Color(0xFF00B1FF),
          ),
          SizedBox(height: kDefaultPadding),
          SlideAnimationWidget(
            animationController: _animationController,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Wrap(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 30,
                runSpacing: 40,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                children: [
                  InterestsContainer(
                    title: 'Gaming',
                    icon: FontAwesomeIcons.gamepad,
                  ),
                  InterestsContainer(
                    title: 'Movies',
                    icon: FontAwesomeIcons.video,
                  ),
                  InterestsContainer(
                    title: 'Music',
                    icon: FontAwesomeIcons.music,
                  ),
                  InterestsContainer(
                    title: 'Coding',
                    icon: FontAwesomeIcons.computer,
                  ),
                  InterestsContainer(
                    title: 'Writing',
                    icon: FontAwesomeIcons.pen,
                  ),
                  InterestsContainer(
                    title: 'Travelling',
                    icon: FontAwesomeIcons.plane,
                  ),
                ],
              ),
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: List.generate(
          //     feedbacks.length,
          //     (index) => FeedbackCard(index: index),
          //   ),
          // ),
        ],
      ),
    );
  }
}
