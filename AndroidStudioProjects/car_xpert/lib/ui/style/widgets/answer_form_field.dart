// ignore_for_file: must_be_immutable, use_key_in_widget_constructors
import 'package:flutter/material.dart';

class AnswerForm extends StatelessWidget {
  AnswerForm({
  this.maxLine=20,
  this.hintText,
  this.controler,
  this.count,
  this.onChange,


});
double ? count;
int? maxLine;
String? hintText;
TextEditingController? controler;
var onChange;
@override
Widget build(BuildContext context) {
  return TextFormField( onChanged: onChange, controller: controler,
      maxLines: maxLine,
      decoration: InputDecoration(suffixText: "$count",
          hintStyle: TextStyle(fontSize: 28),
          hintText: hintText,
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(30))));
}
}
