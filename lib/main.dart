import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:square_limo_admin_driver/admin/src/features/complete/view_model/a_complete_view_model.dart';
import 'package:square_limo_admin_driver/common/core/di/app_binding.dart';
import 'package:square_limo_admin_driver/common/core/routes/routes.dart';
import 'package:square_limo_admin_driver/common/core/theme/app_theme.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_constants.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_scroll_behavior.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();

  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  await GetStorage.init(AppConstants.appPackage);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     builder: (context,child){
       return ScrollConfiguration(
           behavior: KScrollBehavior(),
           child: child!
       );
     },
      debugShowCheckedModeBanner: false,
      title: AppConstants.appName,
      theme: AppTheme.darkTheme,
      initialRoute: RouteGenerator.splash,
      getPages: RouteGenerator.routes,
      initialBinding: AppBindings(),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
