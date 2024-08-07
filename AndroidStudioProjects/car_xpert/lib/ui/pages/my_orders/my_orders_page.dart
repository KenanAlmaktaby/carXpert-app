import 'package:carxpert/data/models/order_model/order_model.dart';
import 'package:carxpert/ui/pages/order_details/order_details_page.dart';
import 'package:carxpert/ui/style/app_colors.dart';
import 'package:carxpert/ui/style/widgets/header.dart';
import 'package:carxpert/ui/style/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyOrdersPage extends StatelessWidget {
  MyOrdersPage({Key? key}) : super(key: key);
  List<OrderModel> myOrder = [
    OrderModel(
        number: 10,
        type: 'Rent Car',
        date: '1/2/2024',
        brand: 'BMW',
        name: '2020',
        plateNumber: '899741',
        price: "500 \$",
        carColor: 'red',
        receivedDate: '5/2/2024',
        receivedType: 'delivery',
        deliveryDate: '15/2/2024',
        rentTerm: '10 days',
        state: 'in process'),
    OrderModel(
        number: 20,
        type: 'Buy Car',
        date: '6/2/2024',
        brand: 'Kia',
        name: 'Rio',
        plateNumber: '669833',
        price: "2500 \$",
        carColor: 'gray',
        receivedDate: '12/2/2024',
        receivedType: 'Direct Delivery',
        state: 'in check'),
    OrderModel(
        number: 6,
        type: 'Rent Car',
        date: '9/3/2024',
        brand: 'Honda',
        name: 'Civic',
        plateNumber: '100258',
        price: "600 \$",
        carColor: 'black',
        receivedDate: '9/3/2024',
        receivedType: 'Direct',
        deliveryDate: '9/4/2024',
        rentTerm: '1 month',
        state: 'in check'),
    OrderModel(
        number: 15,
        type: 'Rent Car',
        date: '5/1/2024',
        brand: 'BMW',
        name: '2012',
        plateNumber: '446957',
        price: "400 \$",
        carColor: 'white',
        receivedDate: '6/1/2024',
        receivedType: 'delivery',
        deliveryDate: '21/1/2024',
        rentTerm: '15 days',
        state: 'order done'),
    OrderModel(
        number: 19,
        type: 'Buy Car',
        date: '6/2/2024',
        brand: 'BMW',
        name: '2022',
        plateNumber: '787855',
        price: "3000 \$",
        carColor: 'purple',
        receivedDate: '7/2/2024',
        receivedType: 'delivery',
        state: 'in process'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
