import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/routes.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/controller/menu_tab_bar_controller.dart';

class HungryAndHealthyWidget extends StatelessWidget {
  const HungryAndHealthyWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              Get.toNamed(Routes.menuTabBar);
              Get.find<MenuTabBarController>().getTabController.animateTo(0);
            },
            child: Container(
              height: .25.sh,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              decoration: CustomStyle.containerShadowDecoration,
              child: SvgPicture.asset('assets/images/iam_hungry_bite_logo.svg'),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              Get.toNamed(Routes.menuTabBar);
              Get.find<MenuTabBarController>().getTabController.animateTo(6);
            },
            child: Container(
              height: .25.sh,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              decoration: CustomStyle.containerShadowDecoration,
              child: SvgPicture.asset(
                'assets/images/healthy/iam_healthy.svg',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
