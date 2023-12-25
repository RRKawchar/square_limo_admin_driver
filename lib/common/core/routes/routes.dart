import 'package:get/get.dart';
import 'package:square_limo_admin_driver/admin/src/features/auth/view/screens/a_login_screen.dart';
import 'package:square_limo_admin_driver/common/screens/onboarding/view/screens/onboarding_screen.dart';
import 'package:square_limo_admin_driver/common/screens/selection_panel/view/screens/selection_screen.dart';
import 'package:square_limo_admin_driver/common/screens/splash/view/screens/splash_screen.dart';

class RouteGenerator {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String selectionScreen = '/SelectionScreen';

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
    )
  ];
}
