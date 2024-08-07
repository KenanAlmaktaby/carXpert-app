import 'package:flutter/material.dart';

class OrderModel{
  int number;
  String type;
  String date;
  String? rentTerm;
  String brand;
  String name;
  String plateNumber;
  String price;
  String carColor;
  String receivedDate;
  String? deliveryDate;
  String receivedType;
  String state;

  OrderModel({
    required this.number,
    required this.type,
    required this.date,
    this.rentTerm,
    required this.brand,
    required this.name,
    required this.plateNumber,
    required this.price,
    required this.carColor,
    required this.receivedDate,
    this.deliveryDate,
    required this.receivedType,
    required this.state});






}