import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/widgets/custom_app_bar.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/controller/menu_tab_bar_controller.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/screens/menu_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuTabBar extends GetView<MenuTabBarController> {
  @override
  Widget build(BuildContext context) {
    // Get.put(()=>MenuTabBarController());
    final textTheme = Theme.of(context).textTheme;
    return Obx(
      () => Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(.08.sh),
          child: CustomAppBar(
            centerTitle: '',
            endIcon: SvgPicture.asset('assets/images/search_icon.svg'),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: .08.sh,
              child: TabBar(
                controller: controller.getTabController,
                isScrollable: true,
                labelStyle: textTheme.caption?.copyWith(fontSize: 30),
                labelColor: Colors.black,
                indicatorColor: Colors.transparent,
                unselectedLabelColor: Colors.red[200],
                unselectedLabelStyle: textTheme.caption,
                tabs: [
                  Tab(child: Text('Meal')),
                  Tab(child: Text('Meat')),
                  Tab(child: Text('Chicken')),
                  Tab(child: Text('Dessert')),
                  Tab(child: Text('Breakfast')),
                  Tab(child: Text('Sides')),
                  Tab(
                    child: Text(
                      'I\'M Healthy',
                      style: textTheme.headline1?.copyWith(
                        fontSize: controller.getCurrentIndex.value == 6
                            ? 22.sp
                            : 14.sp,
                        color: controller.getCurrentIndex.value == 6
                            ? CustomColors.greenColor
                            : CustomColors.greenLightColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: controller.getTabController,
                children: <Widget>[
                  MenuScreen(),
                  MenuScreen(),
                  MenuScreen(),
                  MenuScreen(),
                  MenuScreen(),
                  MenuScreen(),
                  MenuScreen(index: controller.getCurrentIndex.value),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
