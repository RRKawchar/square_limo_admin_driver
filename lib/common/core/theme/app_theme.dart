import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';


class AppTheme{
AppTheme._();

static final ThemeData darkTheme=ThemeData(
brightness: Brightness.dark,
  primarySwatch: kPrimarySwitchColor,
  primaryColor: kPrimaryColor,
  scaffoldBackgroundColor:kScaffoldBackgroundColor,
  useMaterial3: true,
 appBarTheme: AppBarTheme(
     centerTitle: true,
     backgroundColor: Colors.transparent,
    foregroundColor: kPrimaryColor,
    surfaceTintColor: Colors.transparent,
    elevation: 0.0,
    titleTextStyle: AppTextStyle.ralewayStyle(fontSize: 20),


 ),

 textTheme:GoogleFonts.ralewayTextTheme(Typography.whiteCupertino)
);




}