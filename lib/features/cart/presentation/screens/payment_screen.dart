import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/widgets/custom_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iam_hungry2/core/src/widgets/side_title_widget.dart';
import 'package:iam_hungry2/features/cart/presentation/controller/payment_controller.dart';
import 'package:iam_hungry2/features/cart/presentation/widgets/enter_coupon_widget.dart';
import 'package:iam_hungry2/features/cart/presentation/widgets/proceeed_button.dart';
import 'package:iam_hungry2/features/cart/presentation/widgets/total_price_widget.dart';
import 'package:iam_hungry2/features/drawer/presentation/widgets/payment_delivery_address_widget.dart';
import 'package:iam_hungry2/features/drawer/presentation/widgets/payment_method_widget.dart';

class PaymentScreen extends GetView<PaymentController> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.08.sh),
        child: CustomAppBar(centerTitle: 'Payment'),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: .08.sh, left: 10, right: 10),
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SideTitleWidget(
                  title: 'Deliver Address',
                  color: Colors.grey,
                  textStyle: textTheme.subtitle1,
                ),
                PaymentDeliverAddressWidget(),
                SideTitleWidget(
                  title: 'Payment Method',
                  color: Colors.grey,
                  textStyle: textTheme.subtitle1,
                ),
                PaymentMethodWidget(controller: controller),
                EnterCouponWidget(controller: controller),
                TotalPriceWidget(discount: 1, tax: 1, total: 1, subTotal: 1),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ProceedButton(
              onTap: () => print('pressed'),
              title: 'Place Order',
            ),
          )
        ],
      ),
    );
  }
}
