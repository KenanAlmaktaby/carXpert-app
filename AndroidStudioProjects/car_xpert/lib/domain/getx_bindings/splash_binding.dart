import 'package:carxpert/domain/controller/splash_controller.dart';
import 'package:get/get.dart';

class SplashBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<SplashController>(SplashController());
  }

}