import 'package:flutter/material.dart';
import 'package:flutter_assignment/commons/size.dart';

/// Medium TextStyle Widget
TextStyle mediumTextStyle({double? textSize = TextSize.s12, Color? color = Colors.black, FontWeight? weight = TextWeight.normal}) {
  return TextStyle(fontSize: textSize, color: color, fontWeight: weight);
}

/// BOLD TextStyle Widget
TextStyle boldTextStyle({double? textSize = TextSize.s12, Color? color = Colors.black, FontWeight? weight = TextWeight.bold}) {
  return TextStyle(fontSize: textSize, color: color, fontWeight: weight);
}

/// SEMI-BOLD TextStyle Widget
TextStyle semiBoldTextStyle({double? textSize = TextSize.s12, Color? color = Colors.black, FontWeight? weight = TextWeight.w400}) {
  return TextStyle(fontSize: textSize, color: color, fontWeight: weight);
}
