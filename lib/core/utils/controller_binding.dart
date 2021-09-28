import 'package:get/get.dart';
import 'package:iam_hungry2/core/localization/translation_controller.dart';
import 'package:iam_hungry2/features/auth/presentation/controller/otp_controller.dart';
import 'package:iam_hungry2/features/auth/presentation/controller/select_language_controller.dart';
import 'package:iam_hungry2/features/auth/presentation/controller/enter_phone_controller.dart';
import 'package:iam_hungry2/features/auth/presentation/controller/slider_controller.dart';
import 'package:iam_hungry2/features/auth/presentation/controller/splash_controller.dart';
import 'package:iam_hungry2/features/cart/presentation/controller/check_out_controller.dart';
import 'package:iam_hungry2/features/cart/presentation/controller/choose_location_controller.dart';
import 'package:iam_hungry2/features/cart/presentation/controller/payment_controller.dart';
import 'package:iam_hungry2/core/feature/location/presentation/controller/location_controller.dart';
import 'package:iam_hungry2/features/drawer/presentation/controller/discount_controller.dart';
import 'package:iam_hungry2/core/feature/location/presentation/controller/map_controller.dart';
import 'package:iam_hungry2/features/drawer/presentation/controller/setting_controller.dart';
import 'package:iam_hungry2/features/home/presentation/controller/drawer_controller.dart';
import 'package:iam_hungry2/features/home/presentation/controller/home_controller.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/controller/create_your_own_controller.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/controller/hungry_controller.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/controller/menu_tab_bar_controller.dart';

import 'injection_container.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    //Core
    Get.lazyPut(() => Injection.sl<TranslationController>(), fenix: true);
    // Auth Cycle
    Get.lazyPut(() => Injection.sl<EnterPhoneController>(), fenix: true);
    Get.lazyPut(() => Injection.sl<OtpController>(), fenix: true);
    Get.lazyPut(() => Injection.sl<SplashController>(), fenix: true);
    Get.lazyPut(() => Injection.sl<SliderController>(), fenix: true);
    Get.lazyPut(() => Injection.sl<SelectLanguageController>(), fenix: true);
    //  Home Cycle
    Get.lazyPut(() => Injection.sl<DrawerCustomController>(), fenix: true);
    Get.lazyPut(() => Injection.sl<HomeController>(), fenix: true);
    //  Drawer Cycle
    Get.lazyPut(() => Injection.sl<MapController>(), fenix: true);
    Get.lazyPut(() => Injection.sl<LocationController>(), fenix: true);
    Get.lazyPut(() => Injection.sl<SettingController>(), fenix: true);
    Get.lazyPut(() => Injection.sl<DiscountController>(), fenix: true);
    // Hungry Cycle
    Get.lazyPut(() => Injection.sl<HungryController>(), fenix: true);
    Get.lazyPut(() => Injection.sl<CreateYourOwnController>(), fenix: true);
    Get.lazyPut(() => Injection.sl<MenuTabBarController>(), fenix: true);
    // Cart Cycle
    Get.lazyPut(() => Injection.sl<CheckOutController>(), fenix: true);
    Get.lazyPut(() => Injection.sl<ChooseLocationController>(), fenix: true);
    Get.lazyPut(() => Injection.sl<PaymentController>(), fenix: true);
  }
}
