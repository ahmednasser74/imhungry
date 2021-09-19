import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iam_hungry2/core/src/widgets/custom_button.dart';
import 'package:iam_hungry2/features/cart/presentation/widgets/add_visa_bottom_sheet.dart';
import 'package:iam_hungry2/features/cart/presentation/widgets/custom_radio_button.dart';

// ignore: must_be_immutable
class PaymentMethodWidget extends StatelessWidget {
  var controller;

  PaymentMethodWidget({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          CustomRadioButton(
            label: 'Cash',
            value: 'cash',
            groupValue: controller.paymentTypeValue.value,
            onChanged: (value) => controller.setPaymentTypeValue = value,
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: CustomRadioButton(
                  label: 'Visa',
                  value: 'visa',
                  groupValue: controller.paymentTypeValue.value,
                  onChanged: (value) => controller.setPaymentTypeValue = value,
                ),
              ),
              CustomButton(
                title: '+Add Card',
                backgroundColor: Colors.white,
                textColor: CustomColors.redLightColor,
                fontFamily: 'nunito',
                onPressed: () => showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => AddVisaCardBottomSheet(),
                ),
              ),
            ],
          ),
          Visibility(
            visible: controller.paymentTypeValue.value == 'visa' ? true : false,
            child: SizedBox(
              width: 1.sw,
              child: Container(
                decoration: CustomStyle.containerShadowDecoration,
                padding: EdgeInsets.all(4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomRadioButton(
                      label: '****1234',
                      value: 'Visa1',
                      groupValue: 'Visa1',
                      onChanged: (value) =>
                          controller.setPaymentTypeValue = value,
                    ),
                    Text('10/22'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
