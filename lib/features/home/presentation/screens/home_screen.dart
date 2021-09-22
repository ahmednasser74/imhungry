import 'package:flutter/material.dart';
import 'package:iam_hungry2/core/src/widgets/cart_fab/cart_fab.dart';
import 'package:iam_hungry2/core/src/widgets/horizontal_list_builder.dart';
import 'package:iam_hungry2/core/src/widgets/side_title_widget.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iam_hungry2/features/home/presentation/controller/home_controller.dart';
import 'package:iam_hungry2/features/home/presentation/widgets/animated_drawer_widget.dart';
import 'package:iam_hungry2/features/home/presentation/widgets/auto_slider_images_widget.dart';
import 'package:iam_hungry2/features/home/presentation/widgets/drawer_home_widget.dart';
import 'package:iam_hungry2/features/home/presentation/widgets/home_app_bar.dart';
import 'package:iam_hungry2/features/home/presentation/widgets/hungry_healthy_card_widget.dart';
import 'package:iam_hungry2/features/home/presentation/widgets/reorder_previous_order_item_widget.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DrawerWidget(),
        AnimatedDrawerWidget(
          controller: controller,
          child: Scaffold(
            floatingActionButton: CartFab(),
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(.08.sh),
              child: HomeAppBar(
                onTapDrawerIcon: () => controller.setScreenSizeByAnimation(),
              ),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SideTitleWidget(title: 'hello'.tr + ' Ahmed'),
                const HungryAndHealthyWidget(),
                AutoSliderImagesWidget(),
                SideTitleWidget(title: 'previousOrder'.tr),
                HorizontalListBuilder(
                  heightList: 16,
                  itemCount: 5,
                  itemBuilder: (context, index) => ReorderPreviousItemWidget(
                    onTapReorder: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
