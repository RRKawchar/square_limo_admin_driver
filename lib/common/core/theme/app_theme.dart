import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';


class AppTheme{
AppTheme._();

static final ThemeData darkTheme=ThemeData(
brightness: Brightness.dark,
  primarySwatch: kPrimarySwitchColor,
  primaryColor: kPrimaryColor,
  scaffoldBackgroundColor:kScaffoldBackgroundColor,
  useMaterial3: true,
 appBarTheme: AppBarTheme(

 )
);




}