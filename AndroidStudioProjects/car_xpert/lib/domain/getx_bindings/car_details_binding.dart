import 'package:carxpert/domain/controller/car_details_controller.dart';
import 'package:get/get.dart';

class CarDetailsBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<CarDetailsController>(CarDetailsController());
  }

}