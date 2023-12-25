import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle ralewayStyle(
      {Color color = Colors.white,
      FontWeight fontWeight = FontWeight.w500,
      double fontSize = 20.0}) {
    return GoogleFonts.raleway(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
    );
  }

}
