import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/routes.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:iam_hungry2/core/utils/enums.dart';
import 'package:iam_hungry2/features/auth/presentation/controller/select_language_controller.dart';
import 'package:iam_hungry2/features/auth/presentation/widgets/language_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectLanguageScreen extends GetView<SelectLanguageController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/sign_up/sign_up_background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                margin: EdgeInsets.symmetric(horizontal: .20.sw),
                width: .45.sw,
                decoration: CustomStyle.containerShadowDecoration,
                child: SvgPicture.asset(
                  'assets/images/iam_hungry_bite_logo.svg',
                  width: .40.sw,
                ),
              ),
              Container(
                height: .250.sh,
                margin: EdgeInsets.symmetric(horizontal: .07.sw),
                padding: EdgeInsets.symmetric(horizontal: .03.sw),
                decoration: CustomStyle.containerShadowDecoration,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset('assets/images/sign_up/language_icon.svg'),
                    Row(
                      children: [
                        LanguageItemWidget(
                          languageName: 'English',
                          // onTap: controller.onEnglishPressed,
                          onTap: () => Get.toNamed(Routes.enterPhoneScreen),
                          backgroundColor:
                              controller.getLanguage == Language.English
                                  ? CustomColors.primaryColor
                                  : Colors.white,
                          textColor: controller.getLanguage == Language.English
                              ? Colors.white
                              : Colors.black,
                        ),
                        LanguageItemWidget(
                          languageName: 'العربيه',
                          // onTap: controller.onArabicPressed,
                          onTap: () => Get.toNamed(Routes.enterPhoneScreen),
                          backgroundColor:
                              controller.getLanguage == Language.Arabic
                                  ? CustomColors.primaryColor
                                  : Colors.white,
                          textColor: controller.getLanguage == Language.Arabic
                              ? Colors.white
                              : Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
