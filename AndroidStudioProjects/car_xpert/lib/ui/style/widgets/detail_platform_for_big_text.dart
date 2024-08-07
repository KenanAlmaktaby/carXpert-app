import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DetailPlatformForBigText extends StatelessWidget {
  IconData? icon;
  String? detailName;
  List<String>? list;
  String? value;


  DetailPlatformForBigText({
    this.icon,
    this.detailName,
    this.value,
    this.list
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        detailName != null ?
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Icon(
            icon,
            color: Theme.of(context).colorScheme.primary,
            size: 15.sp,
          ),
          SizedBox(
            width: 2.w,
          ),
          Text(
            '$detailName ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12.sp,
            ),
          ),
        ]) :SizedBox.shrink(),
        value != null ?
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only( start: 7.w,top: 1.h),
              child: SizedBox(
                height: value!.length.toDouble()/1.8,
                child: Text(
                  value!,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 11.sp,
                      color: Theme.of(context).colorScheme.secondary
                  ),
                ),
              ),
            ),
          ],
        ) : SizedBox.shrink(),
        list != null ?
        ListView.builder(
          physics: ScrollPhysics(),
          shrinkWrap: true,
            itemCount: list!.length,
            itemBuilder: (context ,index){
              String feature = list![index];
              return SizedBox(
                height: feature.length.toDouble()/2,
                child: Padding(
                  padding: EdgeInsetsDirectional.only(start: 2.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:EdgeInsetsDirectional.only(top:0.5.h ,end: 2.w),
                        child: Container(
                          height: 1.h,
                          width: 2.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.sp),
                              color: Theme.of(context).colorScheme.onSurface
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          feature,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.w500,
                            fontSize: 11.sp,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }) : SizedBox.shrink(),
      ],
    );
  }
}