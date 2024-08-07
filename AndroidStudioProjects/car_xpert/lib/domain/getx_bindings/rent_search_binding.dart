import 'package:carxpert/domain/controller/rent_search_controller.dart';
import 'package:get/get.dart';

class RentSearchBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(RentSearchController());
  }

}