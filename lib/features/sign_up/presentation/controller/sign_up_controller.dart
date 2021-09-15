import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/localization/translation_controller.dart';
import 'package:iam_hungry2/core/utils/enums.dart';

class SignUpController extends GetxController {
  final phoneTEC = TextEditingController(text: '');
  final _translationController = Get.find<TranslationController>();
  var selectLanguage = Language.English.obs;

  Language get getLanguage => selectLanguage.value;

  @override
  void onInit() {
    // if (Get.deviceLocale.toString() == 'ar') {
    //   selectLanguage.value = Language.English;
    // } else {
    //   selectLanguage.value = Language.Arabic;
    // }
    super.onInit();
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
