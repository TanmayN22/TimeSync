import 'package:flutter/material.dart';
import 'package:timesync/core/values/app_colors.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final int maxLines;
  final TextAlign textAlign;
  final TextOverflow overflow;
  final TextDecoration? decor;

  const SmallText({
    super.key,
    required this.text,
    required this.fontSize,
    this.color = AppColors.whiteColor,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
    this.maxLines = 1,
    this.overflow = TextOverflow.fade, this.decor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        decoration: decor,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: 'Roobert',
        color: color,
      ),
      overflow: overflow,
    );
  }
}
