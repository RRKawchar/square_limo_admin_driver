import 'package:get/get.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/model/new_request_model.dart';

class PendingViewModel extends GetxController{

  final RxList<bool> _isSeeDetails=List.generate(rideDataList.length, (index) => false).obs;
  RxList<bool> get isSeeDetails => _isSeeDetails;



  void seeDetailsToggle(int index){

    _isSeeDetails[index]=!_isSeeDetails[index];
  }



}