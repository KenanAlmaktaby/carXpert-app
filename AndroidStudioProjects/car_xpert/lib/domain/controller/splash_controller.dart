import 'dart:async';

import 'package:get/get.dart';

class SplashController extends GetxController{
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 6, ), navigateToPage);
  }
  void navigateToPage() {
    Get.offAllNamed('/SignIn');
  }
}