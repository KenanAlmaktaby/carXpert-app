import 'package:carxpert/domain/controller/sign_in_up_controller.dart';
import 'package:carxpert/domain/controller/sign_up_controller.dart';
import 'package:carxpert/ui/style/widgets/my_button.dart';
import 'package:carxpert/ui/style/widgets/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SignUpPage extends StatelessWidget {
  SignUpController signUpController = Get.put(SignUpController());

  SignInUpController signInUpController = Get.put(SignInUpController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            height: 100.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle_outlined,
                  color: Theme.of(context).colorScheme.onSecondary,
                  size: 50.sp,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'let\'s create a new account',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onSecondary,
                      fontSize: 10.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                MyTextField(
                  controller: signUpController.firstNameController,
                  keyboardType: TextInputType.text,
                  hintText: 'First name',
                  obscureText: false,
                  isPassword: false,
                  onChanged: (value){
                    signUpController.firstName = value;
                  },
                ),
                SizedBox(height: 2.h,),
                MyTextField(
                  controller: signUpController.lastNameController,
                  keyboardType: TextInputType.text,
                  hintText: 'Last name',
                  obscureText: false,
                  isPassword: false,
                  onChanged: (value){
                    signUpController.lastName = value;
                  },
                ),
                SizedBox(height: 2.h,),
                MyTextField(
                  controller: signUpController.emailController,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Email',
                  obscureText: false,
                  isPassword: false,
                  onChanged: (value){
                    signUpController.email = value;
                  },
                ),
                SizedBox(
                  height: 2.h,
                ),
                MyTextField(
                  controller: signUpController.phoneNumberController,
                  keyboardType: TextInputType.number,
                  hintText: 'Phone number',
                  obscureText: false,
                  isPassword: false,
                  onChanged: (value){
                    signUpController.phoneNumber = value;
                  },
                ),
                SizedBox(height: 2.h,),
                Obx(
                  ()=> MyTextField(
                      controller: signUpController.passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      hintText: 'Password',
                      obscureText: signInUpController.obscureText.value,
                    onPressed: (){signInUpController.changeObscureText();},
                    isPassword: true,
                    onChanged: (value){
                        signUpController.password = value;
                    },
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Obx(
                  ()=> MyTextField(
                  controller: signUpController.cPasswordController,
                  keyboardType: TextInputType.visiblePassword,
                  hintText: 'Confirm password',
                  obscureText: signInUpController.obscureTextForConfirm.value,
                  onPressed: (){signInUpController.changeObscureTextForConfirm();},
                  isPassword: true,
                    onChanged: (value){
                    signUpController.cPassword = value;
                    },
                  ),
                ),
                SizedBox(height: 2.h,),
                MyButton(
                    onTap: ()async {
                      await onClickSignUp();
                    },
                    text: 'Sign Up'),
                SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account ?',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onSecondary),
                    ),
                    SizedBox(),
                    TextButton(
                      child: Text(
                        'Login now',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSecondary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        Get.toNamed('/SignIn');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Future<void> onClickSignUp() async {
    EasyLoading.show(status: 'loading...');
    await signUpController.signUpOnClick();
    if(signUpController.signUpStatus){
      EasyLoading.showSuccess(signUpController.message,duration:const Duration(seconds: 4));
      Get.offNamed('/SignIn');
    }else{
      EasyLoading.showError(signUpController.message , duration:const Duration(seconds: 5) , dismissOnTap: true);
    }
  }
}
