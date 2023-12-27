import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';

class DialogServices{


  static Future<bool?> flutterToastDialogMessage({required String message}){

   return Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: kWhite,
        textColor: kPrimaryColor,
        fontSize: 16.0
    );
  }


}