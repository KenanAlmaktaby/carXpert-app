import 'package:carxpert/ui/style/app_colors.dart';
import 'package:carxpert/ui/style/widgets/small_text.dart';
import 'package:flutter/material.dart';


class FlexTextButton extends StatelessWidget {
  FlexTextButton({required this.text,
   this.color=AppColors.darkPurple,
  this.weight,
  this.size = 15,
    this.onTap,});

String text;
FontWeight? weight;
Color color;
double size;
var onTap;

  @override
  Widget build(BuildContext context) {
    return   TextButton(
      onPressed: onTap,
      child: SmallText(
       text: text,
        weight: weight,
        color: color,
        size: size,

      ),
    );
  }
}
