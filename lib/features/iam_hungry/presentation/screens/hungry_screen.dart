import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iam_hungry2/core/src/routes.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:iam_hungry2/core/src/widgets/custom_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iam_hungry2/core/src/widgets/drawer/animated_drawer_widget.dart';
import 'package:iam_hungry2/core/src/widgets/drawer/drawer_home_widget.dart';
import 'package:iam_hungry2/core/src/widgets/side_title_widget.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/controller/hungry_controller.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/widgets/custom_square_card.dart';

class HungryScreen extends GetView<HungryController> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Stack(children: [
      DrawerWidget(),
      AnimatedDrawerWidget(controller: controller, child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(.08.sh),
          child: CustomAppBar(
            centerTitle: 'Hungry Home',
            endIcon: SvgPicture.asset('assets/images/search_icon.svg'),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SideTitleWidget(title: 'exploreMenu'.tr),
            SizedBox(
              height: .28.sh,
              child: Row(
                children: [
                  CustomSquareCardHomeScreen(
                    image: 'assets/images/hungry/meal_icon.png',
                    title: 'meal'.tr,
                    onTap: () => controller.navigateToMenu(context, 0),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        CustomSquareCardHomeScreen(
                          image: 'assets/images/hungry/sandwich_icon.png',
                          title: 'sandwich'.tr,
                          onTap: () => controller.navigateToMenu(context, 1),
                        ),
                        SizedBox(height: .01.sh),
                        CustomSquareCardHomeScreen(
                          image: 'assets/images/hungry/dessert_icon.png',
                          title: 'dessert'.tr,
                          onTap: () => controller.navigateToMenu(context, 3),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: .01.sh),
            GestureDetector(
              onTap: () => Get.toNamed(Routes.createYourOwnHungryScreen),
              child: Container(
                decoration: CustomStyle.containerShadowDecoration,
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('createOwnSandwich'.tr, style: textTheme.headline4),
                    SvgPicture.asset(
                      'assets/images/hungry/create_your_own_hungry.svg',
                    )
                  ],
                ),
              ),
            ),
            SideTitleWidget(title: 'topMeal'.tr),
            GestureDetector(
              onTap: () => Get.toNamed(Routes.topMealScreen),
              child: Container(
                height: .23.sh,
                decoration: CustomStyle.containerShadowDecoration,
                margin: EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: SvgPicture.asset(
                        'assets/images/hungry/hot_lable.svg',
                        height: .08.sh,
                      ),
                    ),
                    Center(
                      child: Image.asset('assets/images/hungry/meal_icon.png'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ))
    ],);
  }
}
