import 'package:carxpert/ui/style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BuildImage extends StatelessWidget {
  String url;
  BoxFit fit;

  BuildImage({required this.url, required this.fit});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
        width: double.infinity,

        decoration: BoxDecoration(
          color: AppColors.gray,
          image:DecorationImage(
              fit: fit,
              image: NetworkImage(
                url,
              )
          ),
        ),
    );
  }
}
