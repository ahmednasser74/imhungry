import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/routes.dart';
import 'package:iam_hungry2/core/src/widgets/custom_app_bar.dart';
import 'package:iam_hungry2/core/src/widgets/horizontal_list_builder.dart';
import 'package:iam_hungry2/core/src/widgets/side_title_widget.dart';
import 'package:iam_hungry2/core/controller/check_out_controller.dart';
import 'package:iam_hungry2/features/cart/presentation/controller/before_checkout_controller.dart';
import 'package:iam_hungry2/features/cart/presentation/widgets/before_check_out_item.dart';
import 'package:iam_hungry2/features/cart/presentation/widgets/check_out_item.dart';
import 'package:iam_hungry2/features/cart/presentation/widgets/proceeed_button.dart';
import 'package:iam_hungry2/features/cart/presentation/widgets/total_price_widget.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckOutScreen extends GetView<CheckOutController> {
  @override
  Widget build(BuildContext context) {
    // Get.put(()=>BeforeCheckoutController());
    final beforeCheckoutController = Get.find<BeforeCheckoutController>();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.08.sh),
        child: CustomAppBar(centerTitle: 'Check Out'),
      ),
      body: controller.getMenuLength != 0
          ? Stack(
              children: [
                ListView(
                  padding: EdgeInsets.only(bottom: .08.sh),
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: .4.sh,
                          child: Scrollbar(
                            radius: Radius.circular(10),
                            child: GetBuilder<CheckOutController>(
                              builder: (c) => ListView.builder(
                                shrinkWrap: true,
                                itemCount: controller.getMenuLength,
                                itemBuilder: (_, index) => CheckOutItem(
                                  index: index,
                                  menuModel:
                                      controller.getMenuItems.elementAt(index),
                                  hasPlusAndMinus: true,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Divider(
                              color: CustomColors.primaryColor,
                              thickness: 10,
                            ),
                            Shimmer.fromColors(
                              highlightColor: CustomColors.primaryColor,
                              baseColor: Colors.black,
                              period: Duration(milliseconds: 1000),
                              child: const SideTitleWidget(
                                title: 'Before Check Out',
                                color: Colors.black,
                              ),
                            ),
                            HorizontalListBuilder(
                              heightList: .022.sh,
                              itemCount: 5,
                              itemBuilder: (_, index) => BeforeCheckOutItem(
                                onTap: (){},
                                // onTap:()=>
                                //     beforeCheckoutController.onTabAddItemToCart,
                              ),
                            ),
                            GetBuilder<CheckOutController>(
                              builder: (controller) => TotalPriceWidget(
                                subTotal: controller.getSubtotalPrice,
                                discount: 0,
                                tax: controller.getTax,
                                total: controller.getTotalPrice + 10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ProceedButton(
                    onTap: () => Get.toNamed(Routes.chooseLocationScreen),
                  ),
                )
              ],
            )
          : Container(
              color: Colors.green,
              child: Center(child: Text('No items in cart')),
            ),
    );
  }
}
