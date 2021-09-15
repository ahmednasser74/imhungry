import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'core/localization/translation.dart';
import 'core/localization/translation_controller.dart';
import 'core/src/routes.dart';
import 'core/src/theme.dart';
import 'core/utils/injection_container.dart';
import 'features/drawer/presentation/controller/address_controller.dart';
import 'features/drawer/presentation/controller/map_controller.dart';
import 'features/drawer/presentation/controller/setting_controller.dart';
import 'features/home/presentation/controller/drawer_controller.dart';
import 'features/home/presentation/controller/home_controller.dart';
import 'features/iam_hungry/presentation/controller/create_your_own_controller.dart';
import 'features/iam_hungry/presentation/controller/hungry_controller.dart';
import 'features/sign_up/presentation/controller/otp_controller.dart';
import 'features/sign_up/presentation/controller/sign_up_controller.dart';
import 'features/sign_up/presentation/controller/slider_controller.dart';
import 'features/sign_up/presentation/controller/splash_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injection.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => GetMaterialApp(
        title: 'Flutter Demo',
        theme: CustomsThemes.defaultThemeData,
        initialRoute: Routes.splashScreen,
        locale: Get.deviceLocale,
        getPages: Routes.setScreens(),
        onInit: _initControllers,
        translations: Translation(),
        fallbackLocale: Locale('en'),
        builder: (context, widget) => MediaQuery(
          // Setting font does not change with system font size
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: widget ?? Container(),
        ),
      ),
    );
  }

  void _initControllers() {
    //Core
    Get.lazyPut(() => Injection.sl<TranslationController>());
    // SignUpCycle
    Get.lazyPut(() => Injection.sl<SignUpController>());
    Get.lazyPut(() => Injection.sl<OtpController>(), fenix: true);
    Get.lazyPut(() => Injection.sl<SplashController>());
    Get.lazyPut(() => Injection.sl<SliderController>());
    //  Home Cycle
    Get.lazyPut(() => Injection.sl<DrawerCustomController>(), fenix: true);
    Get.lazyPut(() => Injection.sl<HomeController>(), fenix: true);
    //  Drawer Cycle
    Get.lazyPut(() => Injection.sl<MapController>(), fenix: true);
    Get.lazyPut(() => Injection.sl<AddressController>(), fenix: true);
    Get.lazyPut(() => Injection.sl<SettingController>(), fenix: true);
    // Hungry Cycle
    Get.lazyPut(() => Injection.sl<HungryController>(), fenix: true);
    Get.lazyPut(() => Injection.sl<CreateYourOwnController>(), fenix: true);
  }
}
