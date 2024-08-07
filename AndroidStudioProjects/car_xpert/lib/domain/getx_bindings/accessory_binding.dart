import 'package:carxpert/domain/controller/accessory_controller.dart';
import 'package:get/get.dart';

class AccessoryBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(AccessoryController());
  }

}