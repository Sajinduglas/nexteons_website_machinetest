import 'package:flutter/material.dart';
import '../utils/color_theme.dart';

class HomeTextWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double fontSize;

  HomeTextWidget({
    Key? key,
    required this.text,
    this.onPressed,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 3.0, right: 3),
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
              side: BorderSide(color: ColorTheme.lightBlue), // Adjust border color if needed
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(ColorTheme.lightBlue),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: fontSize, color: Colors.white),
        ),
      ),
    );
  }
}
