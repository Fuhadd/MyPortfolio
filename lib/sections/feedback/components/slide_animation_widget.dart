import 'package:flutter/material.dart';

class SlideAnimationWidget extends StatelessWidget {
  final AnimationController animationController;
  final Widget child;

  const SlideAnimationWidget(
      {required this.animationController, required this.child, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 1),
        end: Offset.zero,
      ).animate(animationController),
      child: FadeTransition(opacity: animationController, child: child),
    );
  }
}
