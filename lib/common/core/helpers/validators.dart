import 'package:square_limo_admin_driver/common/core/errors/messages.dart';

class Validators {
  static String? emptyValidator(value) {
    if (value.toString().isEmpty) {
      return Messages.emptyValidators;
    }
    return null;
  }

  static String? emailValidator(value) {
    if (value.toString().isEmpty) {
      return Messages.emptyEmail;
    }
    return null;
  }

  static String? passwordValidator(value) {
    if (value.toString().isEmpty) {
      return Messages.emptyPassword;
    } else if (value.toString().length < 6) {
      return Messages.invalidPassword;
    }
    return null;
  }

  static String? otpVerification(value) {
    if (value.toString().isEmpty) {
      return Messages.emptyOtp;
    } else if (value.toString().length != 4) {
      return Messages.invalidOtp;
    }

    return null;
  }
}
