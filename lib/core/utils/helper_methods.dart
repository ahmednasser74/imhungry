import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iam_hungry2/core/src/colors.dart';

class HelperMethods {
  static showToast({
    required String msg,
    ToastGravity gravity = ToastGravity.BOTTOM,
    Toast toastLength = Toast.LENGTH_SHORT,
    Color backgroundColor = CustomColors.primaryColor,
    Color textColor = CustomColors.whiteColor,
    double fontSize = 16,
  }) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: toastLength,
      gravity: gravity,
      fontSize: fontSize,
      backgroundColor:backgroundColor,
      textColor:textColor,
    );
  }
}
