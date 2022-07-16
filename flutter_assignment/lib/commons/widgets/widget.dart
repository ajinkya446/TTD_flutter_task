import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'size.dart';
import 'style.dart';

/// This widget is the common widget for subtitle text
Text subtitleText(String title, {double? textSize = TextSize.s12, Color color = Colors.white}) {
  return Text(title,
      style: GoogleFonts.aBeeZee(
        textStyle: semiBoldTextStyle(textSize: textSize, color: color),
      ));
}

Text titleText(String title) {
  return Text(title, style: GoogleFonts.acme(textStyle: mediumTextStyle(textSize: TextSize.s18, weight: TextWeight.w400, color: Colors.white)));
}
