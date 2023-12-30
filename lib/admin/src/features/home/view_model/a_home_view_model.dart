import 'package:get/get.dart';

class AHomeViewModel extends GetxController{

   final _currentIndex = 0.obs;
   int get currentIndex => _currentIndex.value;

   final _isDetails=false.obs;
   bool get isDetails => _isDetails.value;

  final _staticsItemList = ["Complete Ride", "New Ride", "Cancel Ride"].obs;

  List get staticsItemList => _staticsItemList;


  void updateCurrentIndex(int index){
    _currentIndex.value=index;
  }

  void requestDetailsCheck(){
    _isDetails.value=!_isDetails.value;
  }


}