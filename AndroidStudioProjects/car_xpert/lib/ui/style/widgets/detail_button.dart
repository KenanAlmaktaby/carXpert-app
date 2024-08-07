import 'package:flutter/material.dart';

import 'package:ionicons/ionicons.dart';
import 'package:sizer/sizer.dart';

class DetailButton extends StatelessWidget {
  String buttonText;
  var onTapButton;
  DetailButton({
    required this.buttonText,
    required this.onTapButton,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 5.w , end: 5.w, bottom: 2.h),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          width: 50,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Theme.of(context).colorScheme.onSurface),
          ),
          child: Icon(
            Ionicons.heart_outline,
            size: 30,
            color: Colors.grey,
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: InkWell(
            onTap:onTapButton,
            child: Container(
              height: 7.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onSurface,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                  buttonText,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.background,
                  ),
                ),
              ),
            ),
          ),
      ]),
    );
  }
}
