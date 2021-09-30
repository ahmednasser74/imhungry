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
    final tabBarController = Get.find<MenuTabBarController>();
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              Get.toNamed(Routes.menuTabBar);
              tabBarController.getTabController.animateTo(0);
            },
            child: Container(
              height: .23.sh,
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
              tabBarController.getTabController.animateTo(
                tabBarController.getCategoriesModel.categories.length - 1,
              );
            },
            child: Container(
              height: .23.sh,
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
