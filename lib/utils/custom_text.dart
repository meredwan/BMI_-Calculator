import 'package:flutter/material.dart';

Widget HeadingOne({
  required data,
  Color? textColor,
  FontWeight? fontWeight,
}) {
  return Text(
    data,
    style: TextStyle(
        fontSize: 32, color: textColor ?? Colors.white, fontWeight: fontWeight),
  );
}

Widget HeadingTwo({
  required data,
  Color? textColor,
  FontWeight? fontWeight,
}) {
  return Text(
    data,
    style: TextStyle(
        fontSize: 24, color: textColor ?? Colors.white, fontWeight: fontWeight),
  );
}

Widget HeadingThree({
  required data,
  Color? textColor,
  FontWeight? fontWeight,
}) {
  return Text(
    data,
    style: TextStyle(
        fontSize: 18, color: textColor ?? Colors.white, fontWeight: fontWeight),
  );
}
