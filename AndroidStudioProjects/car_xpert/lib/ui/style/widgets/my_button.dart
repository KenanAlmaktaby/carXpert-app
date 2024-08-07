import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  MyButton({
    required this.onTap,
    required this.text,
    super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 8.h,
        padding: EdgeInsetsDirectional.all(10.sp),
        margin: EdgeInsetsDirectional.symmetric(horizontal: 5.w),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(20.sp),
        ),
        child: Center(
          child: Text(text ,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.inversePrimary
            ),
          ),
        ),
      ),
    );
  }
}
