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


  static TextStyle interStyle({Color color=Colors.white,double fontSize=14.0,FontWeight fontWeight=FontWeight.w500}){

    return GoogleFonts.inter(
         fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

}
