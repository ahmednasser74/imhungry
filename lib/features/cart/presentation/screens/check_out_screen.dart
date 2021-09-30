import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/routes.dart';
import 'package:iam_hungry2/core/src/widgets/custom_app_bar.dart';
import 'package:iam_hungry2/core/controller/check_out_controller.dart';
import 'package:iam_hungry2/features/cart/presentation/widgets/before_check_out_widget.dart';
import 'package:iam_hungry2/features/cart/presentation/widgets/check_out_item.dart';
import 'package:iam_hungry2/features/cart/presentation/widgets/proceeed_button.dart';
import 'package:iam_hungry2/features/cart/presentation/widgets/total_price_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckOutScreen extends GetView<CheckOutController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.08.sh),
        child: CustomAppBar(centerTitle: 'Check Out'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
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
                        BeforeCheckoutWidget(),
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
          ),
          ProceedButton(
            onTap: () => Get.toNamed(Routes.chooseLocationScreen),
          )
        ],
      ),
    );
  }
}
