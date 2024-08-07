import 'package:carxpert/service/sign_up_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();

  var firstName = '';
  var lastName = '';
  var email = '';
  var phoneNumber = '';
  var password = '';
  var accountType = 'user';
  var cPassword = '';
  var signUpStatus = false;
  var message ;
  SignUpService signUpService = SignUpService();

  Future<void> signUpOnClick() async {
    signUpStatus = await signUpService.signUpApi(
        firstName, lastName, email, phoneNumber, password, accountType, cPassword);
    message = signUpService.message;
    if(message is List){
      String temp ='';
      for(String s in message){
        temp+=s +'\n';
      }
      message = temp;
    }
  }

}