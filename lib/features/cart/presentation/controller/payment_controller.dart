import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentController extends GetxController {
  var couponController = TextEditingController(text: '').obs;
  var paymentTypeValue = 'cash'.obs;
  var couponIsEmpty = true.obs;

  String get getPaymentTypeValue => paymentTypeValue.value;

  set setPaymentTypeValue(String value) => paymentTypeValue.value = value;

  void changeIcon() {
    couponController.value.addListener(() {
      couponController.value.text.length < 5
          ? couponIsEmpty.value = true
          : couponIsEmpty.value = false;
    });
  }
}
