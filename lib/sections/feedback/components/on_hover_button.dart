import 'package:flutter/material.dart';

class OnHoverResumeButton extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  const OnHoverResumeButton({Key? key, required this.builder})
      : super(key: key);

  @override
  State<OnHoverResumeButton> createState() => _OnHoverResumeButtonState();
}

class _OnHoverResumeButtonState extends State<OnHoverResumeButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (event) => onEntered(true),
        onExit: (event) => onEntered(false),
        child: Container(child: widget.builder(isHovered)));
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
