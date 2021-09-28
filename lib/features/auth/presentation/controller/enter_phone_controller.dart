import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/routes.dart';
import 'package:iam_hungry2/features/auth/domin/usecases/auth_use_case.dart';

class EnterPhoneController extends GetxController {
  LoginUseCase loginUseCase;

  EnterPhoneController({required this.loginUseCase});

  final phoneTEC = TextEditingController(text: '');

  Future<void> login() async {
    Get.toNamed(Routes.otpScreen);
    final phone = phoneTEC.text;
    if (phone.isNotEmpty) {
      final params = LoginParams(phone: phone);
      loginUseCase(params: params);
    } else {
      // HelperMethods.showToast(msg: 'Something went wrong');
    }
  }

}
