import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/local_storage.dart';

class TranslationController extends GetxController {
  var appLocale = 'en';
  LocalStorage localStorage = LocalStorage();

  @override
  void onInit() async {
    appLocale = await localStorage.getLanguageSelected == null
        ? 'ar'
        : await localStorage.getLanguageSelected;
    Get.updateLocale(Locale(appLocale));
    super.onInit();
  }

  void changeLanguage(String type) async {
    if (appLocale == type) return;

    if (type == 'ar') {
      appLocale = 'ar';
      localStorage.saveLanguage('ar');
    } else {
      appLocale = 'en';
      localStorage.saveLanguage('en');
    }
  }
}
