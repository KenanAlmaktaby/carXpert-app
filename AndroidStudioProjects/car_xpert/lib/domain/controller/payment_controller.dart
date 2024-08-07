import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class PaymentController extends GetxController{
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController cardHolderNameController =
  TextEditingController();
  final TextEditingController cardExpiryDateController =
  TextEditingController();
  final TextEditingController cardCvvController = TextEditingController();

  var cardExpireDate = ''.obs;
  var cardNumber  = ''.obs;
  var cardHolderName = ''.obs;
  var cardCvv = ''.obs;

  final FlipCardController flipCardController = FlipCardController();
  void changeCardNumber(var value){
    cardNumber.value = value;
  }

  void changeCardHolder(var value){
    cardHolderName.value = value;
  }

  void changeExpiryDate(var value){
    cardExpireDate.value = value;
  }

  void toggleCard(){
    Future.delayed(const Duration(milliseconds: 300), () {
      flipCardController.toggleCard();
    });
  }

  void changeCardCvv(var value){
    cardCvv.value = value;
  }

}