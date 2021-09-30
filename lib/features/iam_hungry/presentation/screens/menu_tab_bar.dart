import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/widgets/cart_fab/cart_fab.dart';
import 'package:iam_hungry2/core/src/widgets/custom_app_bar.dart';
import 'package:iam_hungry2/core/src/widgets/loading_indicator_widget.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/controller/menu_tab_bar_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuTabBar extends GetView<MenuTabBarController> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      floatingActionButton: CartFab(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.08.sh),
        child: CustomAppBar(
          centerTitle: '',
          endIcon: SvgPicture.asset('assets/images/search_icon.svg'),
        ),
      ),
      body: controller.obx(
        (categoryList) => Column(
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
                tabs: controller.getCategoriesModel.categories
                    .map((i) => Tab(child: Text(i.categoryName)))
                    .toList(),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: controller.getTabController,
                children: controller.menuScreenTabBarView(),
              ),
            ),
          ],
        ),
         onLoading: Center(child: LoadingIndicatorWidget()),
      ),
    );
  }
}
