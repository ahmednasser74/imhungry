import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:iam_hungry2/features/drawer/presentation/screens/about_screen.dart';
import 'package:iam_hungry2/features/drawer/presentation/screens/address_screen.dart';
import 'package:iam_hungry2/features/drawer/presentation/screens/discount_screen.dart';
import 'package:iam_hungry2/features/drawer/presentation/screens/help_screen.dart';
import 'package:iam_hungry2/features/drawer/presentation/screens/map_screen.dart';
import 'package:iam_hungry2/features/drawer/presentation/screens/order_info_screen.dart';
import 'package:iam_hungry2/features/drawer/presentation/screens/order_previous_screen.dart';
import 'package:iam_hungry2/features/drawer/presentation/screens/order_rate_screen.dart';
import 'package:iam_hungry2/features/drawer/presentation/screens/orders_recent_screen.dart';
import 'package:iam_hungry2/features/drawer/presentation/screens/setting_screen.dart';
import 'package:iam_hungry2/features/drawer/presentation/widgets/order_history_tab_bar.dart';
import 'package:iam_hungry2/features/home/presentation/screens/home_screen.dart';
import 'package:iam_hungry2/features/home/presentation/screens/search_screen.dart';
import 'package:iam_hungry2/features/iam_healthy/presentation/screens/healthy_screen.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/screens/create_your_own_hungry.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/screens/hungry_screen.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/screens/top_meal_screen.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/widgets/menu_tab_bar.dart';
import 'package:iam_hungry2/features/sign_up/presentation/screens/otp_screen.dart';
import 'package:iam_hungry2/features/sign_up/presentation/screens/sign_up_screen.dart';
import 'package:iam_hungry2/features/sign_up/presentation/screens/slider_screen.dart';
import 'package:iam_hungry2/features/sign_up/presentation/screens/splash_screen.dart';

class Routes {
  static const String splashScreen = '/splashScreen',
      sliderScreen = '/sliderScreen',
      signUpScreen = '/signUpScreen',
      homeScreen = '/homeScreen',
      otpScreen = '/otpScreen',
      orderRecentScreen = '/orderRecentScreen',
      orderPreviousScreen = '/orderPreviousScreen',
      orderRateScreen = '/orderRateScreen',
      orderInfoScreen = '/orderInfoScreen',
      helpScreen = '/helpScreen',
      discountScreen = '/discountScreen',
      addressScreen = '/addressScreen',
      mapScreen = '/mapScreen',
      settingScreen = '/settingScreen',
      searchScreen = '/searchScreen',
      aboutUsScreen = '/aboutUsScreen',
      menuTabBar = '/menuTabBar',
      healthyScreen = '/healthyScreen',
      hungryScreen = '/hungryScreen',
      topMealScreen = '/topMealScreen',
      createYourOwnHungryScreen = '/createYourOwnHungryScreen',
      orderHistoryTabBar = '/orderHistoryTabBar';

  static List<GetPage> setScreens() {
    return <GetPage>[
      GetPage(name: splashScreen, page: () => SplashScreen()),
      GetPage(name: sliderScreen, page: () => SliderScreen()),
      GetPage(name: signUpScreen, page: () => SignUpScreen()),
      GetPage(name: otpScreen, page: () => OtpScreen()),
      GetPage(name: homeScreen, page: () => HomeScreen()),
      GetPage(name: orderHistoryTabBar, page: () => OrderHistoryTabBar()),
      GetPage(name: orderRecentScreen, page: () => OrdersRecentScreen()),
      GetPage(name: orderPreviousScreen, page: () => OrdersPreviousScreen()),
      GetPage(name: orderRateScreen, page: () => OrderRateScreen()),
      GetPage(name: orderInfoScreen, page: () => OrderInfoScreen()),
      GetPage(name: helpScreen, page: () => HelpScreen()),
      GetPage(name: discountScreen, page: () => DiscountScreen()),
      GetPage(name: addressScreen, page: () => AddressScreen()),
      GetPage(name: mapScreen, page: () => MapScreen()),
      GetPage(name: settingScreen, page: () => SettingScreen()),
      GetPage(name: searchScreen, page: () => SearchScreen()),
      GetPage(name: aboutUsScreen, page: () => AboutUsScreen()),
      GetPage(name: menuTabBar, page: () => MenuTabBar()),
      GetPage(name: healthyScreen, page: () => HealthyScreen()),
      GetPage(name: hungryScreen, page: () => HungryScreen()),
      GetPage(name: topMealScreen, page: () => TopMealScreen()),
      GetPage(
        name: createYourOwnHungryScreen,
        page: () => CreateYourOwnHungryScreen(),
      ),
    ];
  }
}