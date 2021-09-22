import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/features/auth/domin/usecases/otp_use_case.dart';

class OtpController extends GetxController {
  final otpFormKey = GlobalKey<FormState>();
  final otpTEC = TextEditingController(text: '');
  final OtpUseCase otpUseCase;

  OtpController({required this.otpUseCase});

  Future<void> sendOtp() async {
    final otpCode = otpTEC.text;
    final params = OtpParams(otpCode: otpCode);
    otpUseCase(params: params);
  }
}
