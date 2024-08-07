import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class LoadingCardContainer extends StatelessWidget {
  const LoadingCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
              padding:EdgeInsets.symmetric(horizontal: 2.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 1.h,
                  ),
                  Shimmer.fromColors(
                    baseColor: Colors.white24,
                    highlightColor: Colors.white60,

                    child: Container(
                      height: 15.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.sp),
                          color: Colors.white24),
                      margin: EdgeInsetsDirectional.only(bottom: 2.w),
                    ), // Placeholder widget while loading
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  Shimmer.fromColors(
                    baseColor: Colors.white24,
                    highlightColor: Colors.white60,
                    child: Container(
                      height: 2.5.h,
                      width: 10.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.sp),
                          color: Colors.white24),
                    ), // Placeholder widget while loading
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Shimmer.fromColors(
                    baseColor: Colors.white24,
                    highlightColor: Colors.white60,

                    child: Container(
                      height: 1.5.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.sp),
                          color: Colors.white24),
                    ), // Placeholder widget while loading
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Shimmer.fromColors(
                    baseColor: Colors.white24,
                    highlightColor: Colors.white60,

                    child: Container(
                      height: 2.5.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.sp),
                          color: Colors.white24),
                    ), // Placeholder widget while loading
                  ),
                ],
              ),
            );
          }),
    );
  }
}
