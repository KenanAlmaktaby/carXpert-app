import 'package:carxpert/domain/controller/sale_search_controller.dart';
import 'package:get/get.dart';

class SaleSearchBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(SaleSearchController());
  }

}