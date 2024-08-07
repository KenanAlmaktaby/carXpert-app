import 'package:get/get.dart';

class SignInUpController extends GetxController{
  RxBool obscureText = true.obs;
  RxBool obscureTextForConfirm = true.obs;

  void changeObscureTextForConfirm(){
    obscureTextForConfirm.value = !obscureTextForConfirm.value;
  }

  void changeObscureText(){
    obscureText.value = !obscureText.value;
  }
}