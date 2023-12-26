import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';

extension BuildContextExtensions on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;
  TextTheme get appTextTheme => Theme.of(this).textTheme;
  Color get primaryColor => Theme.of(this).primaryColor;



  // TextStyle? get  buttonStyle =>
  //   Theme.of(this).textTheme.titleSmall?.copyWith(
  //     fontWeight:FontWeight.w600,
  //     color: kBlackLight,
  //     fontSize: 14,
  //   );



  TextStyle? get buttonTextStyle=>
      AppTextStyle.ralewayStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: kBlack
      );

}
