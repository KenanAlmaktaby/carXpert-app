// ignore_for_file: must_be_immutable, use_key_in_widget_constructors
import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  SmallText(
      {
  required this.text
        ,this.color = Colors.white24,
      this.weight,
      this.overflow,
      this.size = 18});
  String text;
  FontWeight? weight;
  TextOverflow? overflow;
  Color color;
  double size;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontWeight: weight,
            fontSize: size,
            overflow: overflow,
            color: color));
  }
}
