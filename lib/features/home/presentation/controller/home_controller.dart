import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeController extends GetxController {
  var _xOffset = 0.0.obs;
  var _yOffset = 0.0.obs;
  var _scaleFactor = 1.0.obs;
  var _borderRadiusScreen = 0.0.obs;

  get xOffset => _xOffset.value;

  get yOffset => _yOffset.value;

  get scaleFactor => _scaleFactor.value;

  get borderRadiusScreen => _borderRadiusScreen.value;

  setScreenSizeByNormal() {
    _xOffset.value = 0;
    _yOffset.value = 0;
    _scaleFactor.value = 1;
    _borderRadiusScreen.value = 0;
  }

  setScreenSizeByAnimation() {
    _xOffset.value = .60.sw;
    _yOffset.value = .25.sh;
    _scaleFactor.value = .60;
    _borderRadiusScreen.value = 50;
  }

  Future<bool> onWillPop() {
    xOffset != 0 ? setScreenSizeByNormal() : Get.back();
    return Future.value(false);
  }
}
