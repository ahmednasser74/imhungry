import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/features/cart/presentation/screens/delivery_screen.dart';
import 'package:iam_hungry2/features/cart/presentation/screens/pick_up_screen.dart';

class ChooseLocationController extends GetxController {
  var groupValue = 'delivery'.obs;

  String get getGroupValue => groupValue.value;

  set setGroupValue(String value) => groupValue.value = value;

  Widget locationTypeWidget() {
    if (groupValue.value == 'store') {
      return PickUpAndDineInScreen();
    } else if (groupValue.value == 'dineIn') {
      return PickUpAndDineInScreen();
    }
    return DeliveryScreen();
  }
}
