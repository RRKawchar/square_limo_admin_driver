import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';

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


  static TextStyle interStyle(){

    return GoogleFonts.inter(
         fontSize: 14,
      fontWeight: FontWeight.w500,
      color: kWhite,
    );
  }

}
