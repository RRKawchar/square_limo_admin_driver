import 'package:get/get.dart';
import 'package:square_limo_admin_driver/admin/src/features/cancel_ride/view_model/a_cancel_veiw_model.dart';
import 'package:square_limo_admin_driver/admin/src/features/complete/view_model/a_complete_view_model.dart';
import 'package:square_limo_admin_driver/admin/src/features/dashboard/view_model/a_dashboard_view_model.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/view_model/a_home_view_model.dart';
import 'package:square_limo_admin_driver/admin/src/features/in_progress/view_model/in_progress_view_model.dart';
import 'package:square_limo_admin_driver/admin/src/features/pending/view_model/pending_view_model.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ADashboardViewModel(), fenix: true);
    Get.lazyPut(() => AHomeViewModel(), fenix: true);
    Get.lazyPut(() => ACompleteViewModel(), fenix: true);
    Get.lazyPut(() => InProgressViewModel(),fenix: true);
    Get.lazyPut(() => PendingViewModel(),fenix: true);
    Get.lazyPut(() => ACancelViewModel(),fenix: true);
  }
}
