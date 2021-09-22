import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/routes.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:iam_hungry2/core/src/widgets/custom_button.dart';
import 'package:iam_hungry2/core/utils/enums.dart';
import 'package:iam_hungry2/features/auth/presentation/controller/sign_up_controller.dart';
import 'package:iam_hungry2/features/auth/presentation/widgets/language_widget.dart';
import 'package:iam_hungry2/features/auth/presentation/widgets/sign_up_row_icons_item_widget.dart';
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
            padding: const EdgeInsets.all(20),
            shrinkWrap: true,
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
              const SizedBox(height: 20),
              SignUpIconsWidget(),
              const SizedBox(height: 20),
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
                  LanguageItemWidget(
                    languageName: 'English',
                    // onTap: controller.onEnglishPressed,
                    onTap: () {},
                    backgroundColor: controller.getLanguage == Language.English
                        ? CustomColors.primaryColor
                        : Colors.white,
                    textColor: controller.getLanguage == Language.English
                        ? Colors.white
                        : Colors.black,
                  ),
                  LanguageItemWidget(
                    languageName: 'Arabic',
                    // onTap: controller.onArabicPressed,
                    onTap: () {},
                    backgroundColor: controller.getLanguage == Language.Arabic
                        ? CustomColors.primaryColor
                        : Colors.white,
                    textColor: controller.getLanguage == Language.Arabic
                        ? Colors.white
                        : Colors.black,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CustomButton(
                onPressed: controller.login,
                title: 'login'.tr,
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
      ),
    );
  }
}
