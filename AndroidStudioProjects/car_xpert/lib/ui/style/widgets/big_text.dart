// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  BigText(
      {required this.text,this.color,
      this.letterSpacing,
      this.size = 24,
      this.weight = FontWeight.bold});
  String text;
  double size;
  double? letterSpacing;
  Color? color;
  FontWeight weight;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontSize: size,
            fontWeight: weight,
            letterSpacing: letterSpacing,
            color: color));
  }
}
