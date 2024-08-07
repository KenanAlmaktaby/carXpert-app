import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class InternalMaintenanceController extends GetxController{
  RxString selectedCar = ''.obs;
  RxString selectedTime = ''.obs;
  Rx<DateTime> selectedDate =  DateTime(0).obs;
  RxList<DropdownMenuItem<String>> listTimes = <DropdownMenuItem<String>>[].obs;
  RxString formattedDate = DateFormat('dd/MM/yyyy').format(DateTime.now()).obs;

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );

    if (picked != null && picked != selectedDate.value) {
      selectedDate.value=picked;
      formattedDate.value = DateFormat('dd/MM/yyyy').format(picked);
    }
  }


}