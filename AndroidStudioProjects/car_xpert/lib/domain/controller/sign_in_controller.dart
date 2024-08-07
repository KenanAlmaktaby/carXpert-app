import 'package:carxpert/service/sign_in_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var email = '';
  var password = '';
  var signInStatus = false;
  var message ;
  SignInService signInService = SignInService();
  RxBool checkBoxStatus=false.obs;
  RxBool flag=true.obs;
  RxBool isGo=false.obs;

  Future<void> signInOnClick() async {
    signInStatus = await signInService.signInApi(email, password,checkBoxStatus.value);
    message = signInService.message;
    if(message is List){
      String temp ='';
      for(String s in message){
        temp+=s +'\n';
      }
      message = temp;
    }
  }
  void changeCheckBox() {
    checkBoxStatus.value=!checkBoxStatus.value;

  }
}