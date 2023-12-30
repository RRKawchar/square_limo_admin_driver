

import 'package:get/get.dart';
import 'package:square_limo_admin_driver/admin/src/features/dashboard/view_model/a_dashboard_view_model.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/view_model/a_home_view_model.dart';

class AppBindings extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => ADashboardViewModel(),fenix: true);
   Get.lazyPut(() => AHomeViewModel(),fenix:true);
  }


}