import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/utils/enums.dart';
import 'package:iam_hungry2/core/utils/injection_container.dart';
import 'package:iam_hungry2/core/utils/local_storage.dart';

class SettingController extends GetxController {
  var messageValue = false.obs;
  var orderStatusValue = false.obs;
  var couponsValue = false.obs;
  var selectLanguage = Language.English.obs;
  late Color borderColor;
  late String lang;

  @override
  void onInit() async {
    final lang = await Injection.sl<LocalStorage>().getLanguageSelected;
    lang == 'en'
        ? selectLanguage.value = Language.English
        : selectLanguage.value = Language.Arabic;

    super.onInit();
  }

  void changeLanguage(Language language) {
    if (language == Language.English) {
      selectLanguage.value = Language.English;
    } else {
      selectLanguage.value = Language.Arabic;
    }
  }

  void onMessageChange(bool value) => messageValue.value = value;

  void onOrderStatusChange(bool value) => orderStatusValue.value = value;

  void onCouponsChange(bool value) => couponsValue.value = value;
}
