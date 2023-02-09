import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../style/colors.dart';
import '../../style/fonts.dart';

TextStyle defaultTextStyle({
  final double fontSize = 20,
  final color = black,
  final FontWeight fontWeight = FontWeight.normal,
}) =>
    TextStyle(
        fontSize: fontSize.sp,
        color: color,
        fontWeight: fontWeight,
        fontFamily: Font_The_Sans);

TextSpan defaultText({
  required String text,
  final double fontSize = 20,
  final color = black,
  final FontWeight fontWeight = FontWeight.normal,
}) =>
    TextSpan(
      text: text,
      style: TextStyle(
          fontSize: fontSize.sp,
          color: color,
          fontWeight: fontWeight,
          fontFamily: Font_The_Sans),
    );

Text defaultText2(
        {required String text,
        final double fontSize = 20,
        final color = black,
        final FontWeight fontWeight = FontWeight.normal,
        final TextAlign textAlign = TextAlign.right}) =>
    Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          fontSize: fontSize.sp,
          color: color,
          fontWeight: fontWeight,
          fontFamily: Font_The_Sans),
    );
