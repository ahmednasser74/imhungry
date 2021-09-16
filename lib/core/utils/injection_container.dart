import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iam_hungry2/core/localization/translation_controller.dart';
import 'package:iam_hungry2/features/drawer/presentation/controller/address_controller.dart';
import 'package:iam_hungry2/features/drawer/presentation/controller/map_controller.dart';
import 'package:iam_hungry2/features/drawer/presentation/controller/setting_controller.dart';
import 'package:iam_hungry2/features/home/presentation/controller/drawer_controller.dart';
import 'package:iam_hungry2/features/home/presentation/controller/home_controller.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/controller/create_your_own_controller.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/controller/hungry_controller.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/controller/menu_tab_bar_controller.dart';
import 'package:iam_hungry2/features/sign_up/presentation/controller/otp_controller.dart';
import 'package:iam_hungry2/features/sign_up/presentation/controller/sign_up_controller.dart';
import 'package:iam_hungry2/features/sign_up/presentation/controller/slider_controller.dart';
import 'package:iam_hungry2/features/sign_up/presentation/controller/splash_controller.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'local_storage.dart';

class Injection {
  static final sl = GetIt.instance;

  static Future<void> init() async {
    // Core
    await GetStorage.init();
    sl.registerLazySingleton<LocalStorage>(() => LocalStorage());
    sl.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker(),
    );
    sl.registerLazySingleton<TranslationController>(
      () => TranslationController(),
    );
    _signUpCycle();
    _homeCycle();
    _drawerCycle();
    _hungryCycle();
  }

  static void _signUpCycle() {
    // Controller
    sl.registerFactory<SignUpController>(() => SignUpController());
    sl.registerFactory<OtpController>(() => OtpController());
    sl.registerFactory<SplashController>(() => SplashController());
    sl.registerFactory<SliderController>(() => SliderController());
  }

  static void _homeCycle() {
    // Controller
    sl.registerFactory<DrawerCustomController>(() => DrawerCustomController());
    sl.registerFactory<HomeController>(() => HomeController());
  }

  static void _drawerCycle() {
    // Controller
    sl.registerFactory<MapController>(() => MapController());
    sl.registerFactory<AddressController>(() => AddressController());
    sl.registerFactory<SettingController>(() => SettingController());
  }

  static void _hungryCycle() {
    // Controller
    sl.registerFactory<HungryController>(() => HungryController());
    sl.registerFactory<MenuTabBarController>(() => MenuTabBarController());
    sl.registerFactory<CreateYourOwnController>(
        () => CreateYourOwnController());
  }
}
