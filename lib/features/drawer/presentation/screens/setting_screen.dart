import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/widgets/custom_app_bar.dart';
import 'package:iam_hungry2/core/src/widgets/custom_button.dart';
import 'package:iam_hungry2/core/utils/enums.dart';
import 'package:iam_hungry2/features/drawer/presentation/controller/setting_controller.dart';
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
            Padding(
              padding: EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Name :', style: textTheme.caption),
                          Text('Ahmed Nasser', style: textTheme.headline4),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Gender :', style: textTheme.caption),
                          Text('Male', style: textTheme.headline4),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mobile Number :', style: textTheme.caption),
                      Text('+201119193535', style: textTheme.headline4),
                    ],
                  )
                ],
              ),
            ),
            SettingSectionTitle(title: 'Notification'),
            SwitchListTile(
              value: controller.messageValue.value,
              onChanged: (bool value) => controller.onMessageChange(value),
              title: Text('Message', style: textTheme.caption),
            ),
            SwitchListTile(
              value: controller.orderStatusValue.value,
              onChanged: (bool value) => controller.onOrderStatusChange(value),
              title: Text('Order Status', style: textTheme.caption),
            ),
            SwitchListTile(
              value: controller.couponsValue.value,
              onChanged: (bool value) => controller.onCouponsChange(value),
              title: Text('Coupons', style: textTheme.caption),
            ),
            SettingSectionTitle(title: 'General'),
            SizedBox(height: .01.sh),
            ListTile(
              title: Text('Language', style: textTheme.caption),
              trailing: Wrap(
                spacing: 14, // space between two icons
                children: <Widget>[
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
              marginHorizontal: .25.sh,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.logout, color: Colors.white),
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
