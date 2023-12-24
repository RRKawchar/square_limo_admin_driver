import 'package:get/get.dart';
import 'package:square_limo_admin_driver/common/screens/onboarding/view/screens/onboarding_screen.dart';
import 'package:square_limo_admin_driver/common/screens/splash/view/screens/splash_screen.dart';


class RouteGenerator{

static const String splash='/';
static const String onboarding='/onboarding';



static final routes=[

GetPage(
    name: RouteGenerator.splash,
    page:()=> const SplashScreen(),
),

  GetPage(
      name: RouteGenerator.onboarding,
      page: ()=> const OnboardingScreen(),
  )

];



}