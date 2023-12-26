import 'package:get/get.dart';
import 'package:square_limo_admin_driver/admin/src/features/auth/view/screens/a_login_screen.dart';
import 'package:square_limo_admin_driver/admin/src/features/auth/view/screens/a_forget_password_screen.dart';
import 'package:square_limo_admin_driver/admin/src/features/auth/view/screens/a_otp_verification_screen.dart';
import 'package:square_limo_admin_driver/admin/src/features/auth/view/screens/a_reset_password_screen.dart';
import 'package:square_limo_admin_driver/admin/src/features/dashboard/view/screens/a_dashboard_screen.dart';
import 'package:square_limo_admin_driver/common/screens/onboarding/view/screens/onboarding_screen.dart';
import 'package:square_limo_admin_driver/common/screens/selection_panel/view/screens/selection_screen.dart';
import 'package:square_limo_admin_driver/common/screens/splash/view/screens/splash_screen.dart';

class RouteGenerator {
  /// common routes
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String selectionScreen = '/SelectionScreen';

  /// Admin routes
  static const String login = '/login';
  static const String aDashboard = "/aDashboard";
  static const String aForgetPassword = "/aForgetPassword";
  static const String aOtpVerification = "/a-otp-verification";
  static const String aResetPasswordScreen = "/a-reset-password-screen";

  static final routes = [
    GetPage(
      name: RouteGenerator.splash,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: RouteGenerator.onboarding,
      page: () => const OnboardingScreen(),
    ),
    GetPage(
      name: RouteGenerator.login,
      page: () => const ALoginScreen(),
    ),
    GetPage(
      name: RouteGenerator.selectionScreen,
      page: () => const SelectionScreen(),
    ),
    GetPage(
      name: RouteGenerator.aDashboard,
      page: () => const ADashboardScreen(),
    ),
    GetPage(
      name: RouteGenerator.aForgetPassword,
      page: () => const AForgetPasswordScreen(),
    ),
    GetPage(
      name: RouteGenerator.aOtpVerification,
      page: () => AOtpVerificationScreen(
        arguments: Get.arguments as AOtpVerificationArguments,
      ),
    ),
    GetPage(
      name: RouteGenerator.aResetPasswordScreen,
      page: () => const AResetPasswordScreen(),
    ),
  ];
}
