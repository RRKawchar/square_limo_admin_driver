import 'package:get/get.dart';
import 'package:square_limo_admin_driver/admin/src/features/auth/view/screens/a_login_screen.dart';
import 'package:square_limo_admin_driver/admin/src/features/auth/view/screens/a_forget_password_screen.dart';
import 'package:square_limo_admin_driver/admin/src/features/auth/view/screens/a_otp_verification_screen.dart';
import 'package:square_limo_admin_driver/admin/src/features/auth/view/screens/a_reset_password_screen.dart';
import 'package:square_limo_admin_driver/admin/src/features/cancel_ride/view/screen/ride_cancel_screen.dart';
import 'package:square_limo_admin_driver/admin/src/features/chat/view/screens/a_chat_screen.dart';
import 'package:square_limo_admin_driver/admin/src/features/complete/view/screen/ride_complete_screen.dart';
import 'package:square_limo_admin_driver/admin/src/features/dashboard/view/screens/a_dashboard_screen.dart';
import 'package:square_limo_admin_driver/admin/src/features/driver/view/screens/a_diver_screen.dart';
import 'package:square_limo_admin_driver/admin/src/features/driver/view/screens/driver_add_screen.dart';
import 'package:square_limo_admin_driver/admin/src/features/in_progress/view/screen/in_progress_screen.dart';
import 'package:square_limo_admin_driver/admin/src/features/pending/view/screen/a_pending_screen.dart';
import 'package:square_limo_admin_driver/admin/src/features/request/view/screens/a_request_screen.dart';
import 'package:square_limo_admin_driver/admin/src/features/statistics/view/screen/statistics_screen.dart';
import 'package:square_limo_admin_driver/admin/src/features/user/view/screen/user_screen.dart';
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
  static const String aChatScreen = "/a-chat-screen";
  static const String aRequestScreen = "/a-request-screen";
  static const String aRideCompleteScreen = "/a-ride-complete-screen";
  static const String aInProgressScreen = "/a-in-progress-screen";
  static const String aPendingScreen = "/a-pending_screen";
  static const String aRideCancelScreen = "/a-cancel-ride";
  static const String aUserScreen = "/a-user-screen";
  static const String aDriverScreen = "/a-driver-screen";
  static const String driverAddScreen = "/driver-add-screen";
  static const String statisticsScreen="/statistics-screen";

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
    GetPage(
      name: RouteGenerator.aChatScreen,
      page: () => const AChatScreen(),
    ),
    GetPage(
      name: RouteGenerator.aRequestScreen,
      page: () => const ARequestScreen(
        isLeading: true,
      ),
    ),
    GetPage(
      name: RouteGenerator.aRideCompleteScreen,
      page: () => const RideCompleteScreen(),
    ),
    GetPage(
      name: RouteGenerator.aInProgressScreen,
      page: () => const InProgressScreen(),
    ),
    GetPage(
      name: RouteGenerator.aPendingScreen,
      page: () => const APendingScreen(),
    ),
    GetPage(
      name: RouteGenerator.aRideCancelScreen,
      page: () => const RideCancelScreen(),
    ),
    GetPage(
      name: RouteGenerator.aUserScreen,
      page: () => const UserScreen(),
    ),
    GetPage(
      name: RouteGenerator.aDriverScreen,
      page: () => const ADriverScreen(),
    ),
    GetPage(
      name: RouteGenerator.statisticsScreen,
      page: () => const StatisticsScreen(),
    ),
  ];
}
