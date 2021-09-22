import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/widgets/custom_app_bar.dart';
import 'package:iam_hungry2/core/src/widgets/custom_button.dart';
import 'package:iam_hungry2/core/utils/enums.dart';
import 'package:iam_hungry2/features/drawer/presentation/controller/setting_controller.dart';
import 'package:iam_hungry2/features/drawer/presentation/widgets/setting_profile_widget.dart';
import 'package:iam_hungry2/features/drawer/presentation/widgets/setting_category_title.dart';
import 'package:iam_hungry2/features/drawer/presentation/widgets/setting_language_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingScreen extends GetView<SettingController> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Obx(
      () => Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(.08.sh),
          child: CustomAppBar(centerTitle: 'Setting'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SettingSectionTitle(
              title: 'Profile',
              haveEditingButton: true,
              onTapEditProfile: () {},
            ),
            SettingProfileWidget(),
            SettingSectionTitle(title: 'Notification'),
            SwitchListTile(
              value: controller.messageValue.value,
              onChanged: (bool value) => controller.onMessageChange(value),
              title: Text('Message', style: textTheme.caption),
              activeColor: CustomColors.primaryColor,
            ),
            SwitchListTile(
              value: controller.orderStatusValue.value,
              onChanged: (bool value) => controller.onOrderStatusChange(value),
              title: Text('Order Status', style: textTheme.caption),
              activeColor: CustomColors.primaryColor,
            ),
            SwitchListTile(
              value: controller.couponsValue.value,
              onChanged: (bool value) => controller.onCouponsChange(value),
              title: Text('Coupons', style: textTheme.caption),
              activeColor: CustomColors.primaryColor,
            ),
            SettingSectionTitle(title: 'General'),
            SizedBox(height: .01.sh),
            ListTile(
              title: Text('Language', style: textTheme.caption),
              trailing: Wrap(
                spacing: 14, // space between two icons
                children: [
                  SettingLanguageWidget(
                    onTap: () => controller.changeLanguage(Language.English),
                    languageName: 'EN',
                    borderColor:
                        controller.selectLanguage.value == Language.English
                            ? CustomColors.primaryColor
                            : CustomColors.redLightColor,
                    languageTextColor:
                        controller.selectLanguage.value == Language.English
                            ? CustomColors.primaryColor
                            : CustomColors.redLightColor,
                  ),
                  SettingLanguageWidget(
                    onTap: () => controller.changeLanguage(Language.Arabic),
                    languageName: 'AR',
                    borderColor:
                        controller.selectLanguage.value == Language.Arabic
                            ? CustomColors.primaryColor
                            : CustomColors.redLightColor,
                    languageTextColor:
                        controller.selectLanguage.value == Language.Arabic
                            ? CustomColors.primaryColor
                            : CustomColors.redLightColor,
                  ),
                ],
              ),
            ),
            SizedBox(height: .08.sh),
            CustomButton(
              onPressed: () {},
              marginHorizontal: .18.sh,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.logout, color: Colors.white),
                  SizedBox(width: 8),
                  Text('Logout', style: textTheme.headline2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
