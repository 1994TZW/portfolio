import 'package:flutter/material.dart';
import 'package:profolio/theme.dart';

class LocalText extends StatelessWidget {
  final String text;
  final double? textsize;
  final Color? color;
  final double? letterSpacing;
  final FontWeight? fontWeight;
  const LocalText(
      {super.key,
      required this.text,
      this.textsize,
      this.color,
      this.letterSpacing,
      this.fontWeight});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color??primaryColor,
          fontSize: textsize,
          letterSpacing: letterSpacing ?? 0.10,
          fontWeight: fontWeight ?? FontWeight.w400),
    );
  }
}
