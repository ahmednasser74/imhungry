import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'colors.dart';

class CustomStyle {
  static final InputDecoration chatSearchInputDecoration = InputDecoration(
    hintText: 'Group name',
    fillColor: CustomColors.redLightColor,
    filled: true,
    hintStyle: TextStyle(fontSize: 12),
    contentPadding: EdgeInsets.all(10),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
  );
  static final InputDecoration authInputDecoration = InputDecoration(
    fillColor: Colors.white,
    filled: true,
    labelStyle: TextStyle(color: Color(0xFFE8002A)),
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFFE8002A), width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFFE8002A), width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
  );
  static final InputDecoration couponInputDecoration = InputDecoration(
    hintText: 'Coupon...',
    fillColor: Color(0xFFEF9A9A),
    filled: true,
    hintStyle: TextStyle(fontSize: 12),
    contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
  );

  static final BoxDecoration containerShadowDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 6,
        offset: Offset(0, 2),
      ),
    ],
  );
  static final otpPinTheme = PinTheme(
    shape: PinCodeFieldShape.box,
    borderRadius: BorderRadius.circular(16),
    fieldHeight: 100,
    fieldWidth: 70,
    activeFillColor: Colors.white,
    errorBorderColor: Colors.purple,
    activeColor: CustomColors.primaryColor,
    borderWidth: 2,
    selectedFillColor: CustomColors.whiteColor,
    inactiveColor: CustomColors.primaryColor,
    disabledColor: Colors.brown,
    selectedColor: CustomColors.primaryColor,
    inactiveFillColor: CustomColors.whiteColor,
  );
}
