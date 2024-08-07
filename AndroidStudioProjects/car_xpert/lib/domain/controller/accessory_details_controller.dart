import 'package:get/get.dart';

class AccessoryDetailsController extends GetxController{
  RxInt activeIndex = 0.obs;

  void changeImage (int index){
    activeIndex.value = index ;
  }
}