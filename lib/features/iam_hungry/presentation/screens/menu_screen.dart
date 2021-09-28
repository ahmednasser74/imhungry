import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/controller/menu_controller.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/widgets/menu_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'menu_details_dialog.dart';

class MenuScreen extends GetView<MenuController> {
  final bool isIamHungry;
  final int tabBarIndex;

  MenuScreen({required this.tabBarIndex, required this.isIamHungry});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 12),
            child: RichText(
              text: TextSpan(
                text: isIamHungry ? 'I\'m Hungry\n' : 'I\'m Healthy\n',
                style: textTheme.headline1?.copyWith(
                  color: isIamHungry
                      ? CustomColors.primaryColor
                      : CustomColors.greenColor,
                  fontSize: 24.sp,
                ),
                children: [
                  TextSpan(
                    text: 'to eat...',
                    style: textTheme.headline1?.copyWith(fontSize: 24.sp),
                  ),
                ],
              ),
            ),
          ),
          controller.obx(
            (categoryList) => LayoutBuilder(
              builder: (context, constraints) {
                double aspectRatio = .7;
                double width = constraints.maxWidth;
                double itemHeight = (width * .4);
                double height = constraints.maxHeight + itemHeight;
                return OverflowBox(
                  minWidth: width,
                  minHeight: height,
                  maxHeight: height,
                  maxWidth: width,
                  child: GridView.builder(
                    padding: EdgeInsets.only(
                      bottom: itemHeight,
                      top: itemHeight / 2,
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: aspectRatio,
                    ),
                    itemCount:
                        categoryList?.elementAt(tabBarIndex).menuList.length,
                    itemBuilder: (context, index) {
                      return Transform.translate(
                        offset: Offset(0, index.isEven ? itemHeight * .5 : 0),
                        child: MenuItem(
                          index: index,
                          menuModel:
                              categoryList?.elementAt(tabBarIndex).menuList ??
                                  [],
                          onTap: () => showDialog(
                            context: context,
                            builder: (context) => MenuDetailsDialog(
                              index: index,
                              menuItemList: categoryList
                                      ?.elementAt(tabBarIndex)
                                      .menuList ??
                                  [],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
