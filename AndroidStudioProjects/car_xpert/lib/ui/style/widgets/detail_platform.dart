import 'package:carxpert/ui/style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DetailPlatform extends StatelessWidget {
  IconData icon;
  Color iconColor;
  String detailName;
  String value;
  String unit;


  DetailPlatform(
      {required this.icon,
        required this.iconColor,
        required this.detailName,
        required this.value,
        required this.unit,
      });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(icon, color: iconColor , size: 15.sp,),
        SizedBox(width: 2.w),
        Text(
          '$detailName ',
          maxLines: 6,
          overflow: TextOverflow.clip,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12.sp,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        SizedBox(
          width: 1.w,
        ),
        Text(
          value,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 11.sp,
              color: Theme.of(context).colorScheme.secondary
          ),
        ),
        SizedBox(width: 1.w,),
        Text(
          unit,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 11.sp,
              color: Theme.of(context).colorScheme.primary),
        ),
      ],
    );
  }
}