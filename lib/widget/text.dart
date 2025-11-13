import 'package:flutter/material.dart';

Widget text(
    {required text,
      fontSize = 12.0,
      textColor = Colors.black,
      textAlign = TextAlign.left,
      textDecoration = TextDecoration.none,
      fontWeight = FontWeight.w400,
      textOverflow = TextOverflow.clip,
      decorationColor= Colors.red,
      fontStyle=FontStyle.normal,
      double? tightHeight,
      maxlines}) {
  return Text(
    text,
    textAlign: textAlign,
    maxLines: maxlines,
    overflow: textOverflow,
    style: TextStyle(
        decoration: textDecoration,
        color: textColor,
        height: tightHeight,
        fontSize: fontSize,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
        decorationColor: decorationColor,
        fontFamily: 'Inter'),
  );
}
