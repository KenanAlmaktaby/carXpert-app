import 'package:carxpert/domain/controller/splash_controller.dart';
import 'package:carxpert/ui/style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SplashPage extends StatelessWidget{

  SplashController splashController = Get.put(SplashController());

  SplashPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: AppColors.white,
          child: Padding(
            padding:  EdgeInsets.only(top: 20.h),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusDirectional.circular(25.sp),
                      child: Image.asset('assets/images/splash/light_logo_app.gif' ,
                      width: 80.w,
                        height: 50.h,
                        filterQuality: FilterQuality.low
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }

}