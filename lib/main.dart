import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'core/localization/translation.dart';
import 'core/src/routes.dart';
import 'core/src/theme.dart';
import 'core/utils/controller_binding.dart';
import 'core/utils/injection_container.dart';

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
        // locale: Get.deviceLocale,
        getPages: Routes.setScreens(),
        initialBinding: ControllerBinding(),
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
}