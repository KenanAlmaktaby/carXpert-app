import 'package:carxpert/domain/controller/accessory_details_controller.dart';
import 'package:get/get.dart';

class AccessoryDetailsBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(AccessoryDetailsController());
  }

}