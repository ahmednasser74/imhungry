import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/localization/translation_controller.dart';
import 'package:iam_hungry2/core/src/routes.dart';
import 'package:iam_hungry2/core/utils/enums.dart';
import 'package:iam_hungry2/core/utils/helper_methods.dart';
import 'package:iam_hungry2/features/auth/domin/usecases/auth_use_case.dart';

class SignUpController extends GetxController {
  LoginUseCase loginUseCase;

  SignUpController({required this.loginUseCase});

  final phoneTEC = TextEditingController(text: '');
  final _translationController = Get.find<TranslationController>();
  var selectLanguage = Language.English.obs;

  Language get getLanguage => selectLanguage.value;

  Future<void> login() async {
    Get.toNamed(Routes.otpScreen);
    final phone = phoneTEC.text;
    if (phone.isNotEmpty) {
      final params = LoginParams(phone: phone);
      loginUseCase(params: params);
    } else {
      HelperMethods.showToast(msg: 'Something went wrong');
    }
  }

  void onEnglishPressed() async {
    selectLanguage.value = Language.English;
    Get.updateLocale(Locale('en'));
    _translationController.changeLanguage('en');
  }

  void onArabicPressed() {
    selectLanguage.value = Language.Arabic;
    Get.updateLocale(Locale('ar'));
    _translationController.changeLanguage('ar');
  }
}
