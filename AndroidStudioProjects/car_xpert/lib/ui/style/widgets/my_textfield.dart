import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyTextField extends StatelessWidget {
  TextEditingController controller;
  String hintText;
  bool obscureText;
  bool isPassword;
  TextInputType keyboardType;
  dynamic onChanged;
  dynamic onPressed;
  MyTextField(
      {required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.isPassword,
        required this.keyboardType,
        this.onChanged,
        this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 10.sp),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText:isPassword? obscureText : false,
        onChanged: onChanged,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.sp),
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.inversePrimary),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.sp),
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.tertiary),
          ),
          suffixIcon: isPassword
              ? IconButton(
                  icon: Icon(obscureText?Icons.keyboard_control_rounded:Icons.remove_red_eye_outlined),
                  onPressed: onPressed,
                )
              : SizedBox(),
          hintText: hintText,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.tertiary),
        ),
      ),
    );
  }
}
