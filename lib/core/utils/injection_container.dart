import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iam_hungry2/core/localization/translation_controller.dart';
import 'package:iam_hungry2/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:iam_hungry2/features/auth/data/repositories/auth_repository_imp.dart';
import 'package:iam_hungry2/features/auth/domin/repositories/auth_repository.dart';
import 'package:iam_hungry2/features/auth/domin/usecases/auth_use_case.dart';
import 'package:iam_hungry2/features/cart/presentation/controller/check_out_controller.dart';
import 'package:iam_hungry2/features/cart/presentation/controller/choose_location_controller.dart';
import 'package:iam_hungry2/features/cart/presentation/controller/payment_controller.dart';
import 'package:iam_hungry2/features/drawer/presentation/controller/address_controller.dart';
import 'package:iam_hungry2/features/drawer/presentation/controller/map_controller.dart';
import 'package:iam_hungry2/features/drawer/presentation/controller/setting_controller.dart';
import 'package:iam_hungry2/features/home/presentation/controller/drawer_controller.dart';
import 'package:iam_hungry2/features/home/presentation/controller/home_controller.dart';
import 'package:iam_hungry2/features/iam_hungry/data/datasources/hungry_remote_data_source.dart';
import 'package:iam_hungry2/features/iam_hungry/data/repositories/hungry_repository_imp.dart';
import 'package:iam_hungry2/features/iam_hungry/domin/repositories/hungry_repository.dart';
import 'package:iam_hungry2/features/iam_hungry/domin/usecases/menu_use_case.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/controller/create_your_own_controller.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/controller/hungry_controller.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/controller/menu_controller.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/controller/menu_tab_bar_controller.dart';
import 'package:iam_hungry2/features/auth/presentation/controller/otp_controller.dart';
import 'package:iam_hungry2/features/auth/presentation/controller/sign_up_controller.dart';
import 'package:iam_hungry2/features/auth/presentation/controller/slider_controller.dart';
import 'package:iam_hungry2/features/auth/presentation/controller/splash_controller.dart';
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
    _authCycle();
    _homeCycle();
    _drawerCycle();
    _hungryCycle();
    _cartCycle();
  }

  static void _authCycle() {
    // Controller
    sl.registerFactory<SignUpController>(
      () => SignUpController(loginUseCase: sl()),
    );
    sl.registerFactory<OtpController>(() => OtpController());
    sl.registerFactory<SplashController>(() => SplashController());
    sl.registerFactory<SliderController>(() => SliderController());

    // Use cases
    sl.registerLazySingleton<LoginUseCase>(
      () => LoginUseCase(authRepository: sl()),
    );

    //repo
    sl.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImp(authRemoteDataSource: sl()),
    );

    // Data sources
    sl.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImp(),
    );
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
      () => CreateYourOwnController(),
    );
    sl.registerFactory<MenuController>(
      () => MenuController(menuUseCase: sl()),
    );
    // Use cases
    sl.registerLazySingleton<MenuUseCase>(
      () => MenuUseCase(hungryRepository: sl()),
    );
    // Repo
    sl.registerLazySingleton<HungryRepository>(
      () => HungryRepositoryImp(hungryRemoteDataSource: sl()),
    );

    // Data sources
    sl.registerLazySingleton<HungryRemoteDataSource>(
      () => HungryRemoteDataSourceImp(),
    );
  }

  static void _cartCycle() {
    // Controller
    sl.registerFactory<CheckOutController>(() => CheckOutController());
    sl.registerFactory<ChooseLocationController>(
      () => ChooseLocationController(),
    );
    sl.registerFactory<PaymentController>(() => PaymentController());
  }
}
