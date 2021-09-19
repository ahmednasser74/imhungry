import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/routes.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:iam_hungry2/core/src/widgets/custom_button.dart';
import 'package:iam_hungry2/core/utils/enums.dart';
import 'package:iam_hungry2/features/sign_up/presentation/controller/sign_up_controller.dart';
import 'package:iam_hungry2/features/sign_up/presentation/widgets/language_widget.dart';
import 'package:iam_hungry2/features/sign_up/presentation/widgets/sign_up_row_icons_item_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Obx(
      () => Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/sign_up/log_in_background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(30),
                      width: .45.sw,
                      decoration: CustomStyle.containerShadowDecoration,
                      child: SvgPicture.asset(
                        'assets/images/iam_hungry_bite_logo.svg',
                        width: .40.sw,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SignUpRowIconsItemWidget(
                          title: 'feedYourHunger'.tr,
                          image:
                              'assets/images/sign_up/sign_up_feed_your_hunger.svg',
                        ),
                        SignUpRowIconsItemWidget(
                          title: 'easeOrdering'.tr,
                          image: 'assets/images/sign_up/easy_ordering_icon.svg',
                        ),
                        SignUpRowIconsItemWidget(
                          title: 'dealsCoupon'.tr,
                          image: 'assets/images/sign_up/coupon_icon.svg',
                        ),
                        SignUpRowIconsItemWidget(
                          title: 'fastDelivery'.tr,
                          image: 'assets/images/sign_up/delivery_icon.svg',
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: controller.phoneTEC,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      style: textTheme.headline3,
                      decoration: CustomStyle.authInputDecoration.copyWith(
                        hintStyle: textTheme.subtitle1?.copyWith(fontSize: 14),
                        hintText: 'enterPhone'.tr,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        LanguageWidget(
                          languageName: 'English',
                          // onTap: controller.onEnglishPressed,
                          onTap:(){},
                          backgroundColor:
                              controller.getLanguage == Language.English
                                  ? CustomColors.primaryColor
                                  : Colors.white,
                          textColor: controller.getLanguage == Language.English
                              ? Colors.white
                              : Colors.black,
                        ),
                        LanguageWidget(
                          languageName: 'Arabic',
                          // onTap: controller.onArabicPressed,
                          onTap:(){},
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
                    SizedBox(height: 20),
                    CustomButton(
                      onPressed: () => Get.toNamed(Routes.otpScreen),
                      title: 'login'.tr,
                      alignment: Alignment.bottomRight,
                      paddingHorizontal: .26.sw,
                    ),
                    CustomButton(
                      onPressed: () => Get.toNamed(Routes.homeScreen),
                      title: 'skip'.tr,
                      fontFamily: 'nunito',
                      backgroundColor: Colors.transparent,
                      borderColor: Colors.transparent,
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
