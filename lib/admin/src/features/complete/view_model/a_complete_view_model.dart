import 'package:get/get.dart';
import 'package:square_limo_admin_driver/admin/src/features/complete/model/complete_model.dart';

class ACompleteViewModel extends GetxController{

 RxList<bool> isSeeDetails=List.generate(completeRideList.length, (index) => false).obs;



void seeToggleDetails(int index){
  isSeeDetails[index]=!isSeeDetails[index];
}


}