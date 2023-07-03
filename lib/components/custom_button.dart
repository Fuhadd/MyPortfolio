import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final Color color;
  final Color textcolor;
  final Color borderColor;
  final bool isLoading;
  final bool hasBorder;

  const CustomButton({
    required this.title,
    this.onTap,
    this.isLoading = false,
    this.color = Colors.black,
    this.textcolor = Colors.white,
    this.hasBorder = false,
    this.borderColor = Colors.black,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        decoration: hasBorder
            ? BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(40),
                border: Border.all())
            : BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(40),
              ),
        width: double.infinity,
        child: Center(
          child: isLoading
              ? const FittedBox(child: CircularProgressIndicator())
              : Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: textcolor),
                ),
        ),
      ),
    );
  }
}
