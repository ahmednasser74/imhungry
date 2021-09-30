import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/controller/check_out_controller.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/widgets/horizontal_list_builder.dart';
import 'package:iam_hungry2/core/src/widgets/side_title_widget.dart';
import 'package:iam_hungry2/features/cart/presentation/controller/before_checkout_controller.dart';
import 'package:iam_hungry2/features/cart/presentation/widgets/before_check_out_item.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/menu_item/menu_item_model.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BeforeCheckoutWidget extends GetView<BeforeCheckoutController> {
  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (beforeCheckoutList) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Shimmer.fromColors(
            highlightColor: CustomColors.primaryColor,
            baseColor: Colors.black,
            period: Duration(milliseconds: 1000),
            child: SideTitleWidget(
              title: beforeCheckoutList!.categoryName,
              color: Colors.black,
            ),
          ),
          HorizontalListBuilder(
            heightList: .022.sh,
            itemCount: beforeCheckoutList.menuList.length,
            itemBuilder: (_, index) => BeforeCheckOutItem(
              menuItem: beforeCheckoutList.menuList.elementAt(index),
              onTap: () => controller.onAddToCart(
                beforeCheckoutList.menuList.elementAt(index),
              ),
            ),
          ),
        ],
      ),
      onLoading: Center(
        child: Container(
          margin: const EdgeInsets.all(8),
          height: 30,
          width: 30,
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
