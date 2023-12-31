import 'package:get/get.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/model/new_request_model.dart';

class AHomeViewModel extends GetxController{

   final _currentIndex = 0.obs;
   int get currentIndex => _currentIndex.value;


  final _staticsItemList = ["Complete Ride", "New Ride", "Cancel Ride"].obs;

  List get staticsItemList => _staticsItemList;


  void updateCurrentIndex(int index){
    _currentIndex.value=index;
  }






}