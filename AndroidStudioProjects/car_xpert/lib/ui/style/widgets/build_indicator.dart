import 'package:carxpert/ui/style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BuildIndicator extends StatelessWidget{
  int activeIndex;
  int count ;
  BuildIndicator({required this.activeIndex , required this.count});
  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: count,
      effect: ExpandingDotsEffect(
          activeDotColor: AppColors.purple,
          dotColor: AppColors.gray
      ),
    );
  }

}