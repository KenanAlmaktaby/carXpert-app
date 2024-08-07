import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Header extends StatelessWidget {
  String title;

  Header({
    required this.title,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: EdgeInsetsDirectional.all(10.sp),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(10.sp),
            color: Theme.of(context).colorScheme.onSurface,
          ),
          child: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 10.sp,
              color: Theme.of(context).colorScheme.background,
            ),
          ),
        ),
      ),
      title: Text(title,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onSurface,
            fontSize: 18.sp
        ),
      ),
    );
  }
}
