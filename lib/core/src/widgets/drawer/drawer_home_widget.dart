import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/routes.dart';
import 'package:get/get.dart';
import 'drawer_item_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/sign_up/log_in_background.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              color: Colors.white.withOpacity(.5),
              width: 1.sw,
              height: 1.sh,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ahmed Nasser', style: textTheme.headline3),
                      Text('0119193535', style: textTheme.headline5),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DrawerIemWidget(onTap: () {}, text: 'home'.tr),
                      DrawerIemWidget(
                        onTap: () => Get.toNamed(Routes.orderHistoryTabBar),
                        text: 'orders'.tr,
                      ),
                      DrawerIemWidget(
                        onTap: () => Get.toNamed(Routes.addressScreen),
                        text: 'address'.tr,
                      ),
                      DrawerIemWidget(
                        onTap: () => Get.toNamed(Routes.discountScreen),
                        text: 'discount'.tr,
                      ),
                      DrawerIemWidget(
                        onTap: () => Get.toNamed(Routes.settingScreen),
                        text: 'setting'.tr,
                      ),
                      DrawerIemWidget(
                        onTap: () => Get.toNamed(Routes.helpScreen),
                        text: 'help'.tr,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: .50.sw,
                            child: Divider(color: CustomColors.primaryColor),
                          ),
                          DrawerIemWidget(
                            onTap: () => Get.toNamed(Routes.aboutUsScreen),
                            text: 'about'.tr,
                            textStyle: textTheme.subtitle1?.copyWith(
                              color: Colors.black54,
                            ),
                          ),
                          DrawerIemWidget(
                            onTap: () {},
                            text: 'faq'.tr,
                            textStyle: textTheme.subtitle1?.copyWith(
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            'assets/images/iam_hungry_bite_logo.svg',
                            height: .04.sh,
                          ),
                          SizedBox(width: 8),
                          SvgPicture.asset(
                            'assets/images/healthy/iam_healthy.svg',
                            height: .04.sh,
                          ),
                        ],
                      ),
                      Center(
                        child: Text('copyright'.tr, style: textTheme.headline6),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // GestureDetector(
            //   onTap: ()=>Get.offAndToNamed(Routes.healthyScreen),
            //   child: Align(
            //     alignment: Alignment.centerRight,
            //     child: Container(
            //       height: .58.sh,
            //       width: .55.sw,
            //       padding:const EdgeInsets.all(15),
            //       decoration: BoxDecoration(
            //         color: CustomColors.greenLightColor,
            //         borderRadius: BorderRadius.circular(20),
            //       ),
            //       child: Align(
            //         alignment: Alignment.topLeft,
            //         child: SvgPicture.asset(
            //           'assets/images/healthy/iam_healthy.svg',
            //           width: .10.sw,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
