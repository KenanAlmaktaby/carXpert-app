import 'package:carxpert/domain/controller/sign_in_controller.dart';
import 'package:carxpert/domain/controller/sign_in_up_controller.dart';
import 'package:carxpert/ui/style/widgets/my_button.dart';
import 'package:carxpert/ui/style/widgets/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SignInPage extends StatelessWidget {
  SignInController signInController = Get.put(SignInController());

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
                  Icons.lock_open_outlined,
                  color: Theme.of(context).colorScheme.onSecondary,
                  size: 50.sp,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'Car Services App',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onSecondary,
                      fontSize: 10.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                MyTextField(
                  controller: signInController.emailController,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Email',
                  obscureText: false,
                  isPassword: false,
                  onChanged: (value){
                    signInController.email = value;
                  },
                ),
                SizedBox(
                  height: 2.h,
                ),
                Obx(
                  ()=> MyTextField(
                      controller: signInController.passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      hintText: 'Password',
                      obscureText: signInUpController.obscureText.value,
                    onPressed: (){signInUpController.changeObscureText();
                        print(signInUpController.obscureText.value);},
                    isPassword: true,
                    onChanged: (value){
                        signInController.password = value;
                    },
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(() => Checkbox(
                        value:signInController.checkBoxStatus.value,
                        activeColor: Theme.of(context).colorScheme.primary,
                        onChanged: (bool? value) {
                          signInController.changeCheckBox();
                        },
                      ),),
                      Text('Keep Login..',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                    ],
                  ),
                ),
                MyButton(
                    onTap: () async{
                      await onClickSignIn();
                    },
                    text: 'Sign In'),
                SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account ?',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onSecondary),
                    ),
                    SizedBox(),
                    TextButton(
                      child: Text(
                        'Register now',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSecondary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        Get.toNamed('/SignUp');
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
  Future<void> onClickSignIn() async {
    EasyLoading.show(status: 'loading...');
    await signInController.signInOnClick();
    if(signInController.signInStatus){
      EasyLoading.showSuccess(signInController.message,duration:const Duration(seconds: 4));
      Get.offNamed('/Home');
    }else{
      EasyLoading.showError(signInController.message , duration:const Duration(seconds: 5) , dismissOnTap: true);
    }
  }
}
