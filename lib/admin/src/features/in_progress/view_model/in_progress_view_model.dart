import 'package:get/get.dart';
import 'package:square_limo_admin_driver/admin/src/features/in_progress/model/in_progress_model.dart';

class InProgressViewModel extends GetxController{


  final RxList<bool> _isSeeDetails=List.generate(inProgressList.length, (index) => false).obs;
  List<bool> get isSeeDetails => _isSeeDetails;

  void seeDetailsToggle(int index){
    _isSeeDetails[index]=!_isSeeDetails[index];
  }



}