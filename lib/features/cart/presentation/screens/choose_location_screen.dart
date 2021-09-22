import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/routes.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:iam_hungry2/core/src/widgets/custom_app_bar.dart';
import 'package:iam_hungry2/features/cart/presentation/controller/choose_location_controller.dart';
import 'package:iam_hungry2/features/cart/presentation/widgets/custom_radio_button.dart';
import 'package:iam_hungry2/features/cart/presentation/widgets/proceeed_button.dart';

class ChooseLocationScreen extends GetView<ChooseLocationController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(.08.sh),
          child: CustomAppBar(centerTitle: 'Location'),
        ),
        body: Column(
          children: [
            SizedBox(height: .04.sh),
            Container(
              width: 1.sw,
              height: .1.sh,
              padding:const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                padding: EdgeInsets.all(6),
                decoration: CustomStyle.containerShadowDecoration.copyWith(
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomRadioButton(
                      label: 'Delivery',
                      value: 'delivery',
                      groupValue: controller.getGroupValue,
                      onChanged: (newValue) =>
                          controller.setGroupValue = newValue,
                    ),
                    CustomRadioButton(
                      label: 'Pick Up',
                      value: 'store',
                      groupValue: controller.getGroupValue,
                      onChanged: (newValue) =>
                          controller.setGroupValue = newValue,
                    ),
                    CustomRadioButton(
                      label: 'Dine in',
                      value: 'dineIn',
                      groupValue: controller.getGroupValue,
                      onChanged: (newValue) =>
                          controller.setGroupValue = newValue,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: .01.sh),
            controller.locationTypeWidget(),
            ProceedButton(onTap: () => Get.toNamed(Routes.paymentScreen))
          ],
        ),
      ),
    );
  }
}
