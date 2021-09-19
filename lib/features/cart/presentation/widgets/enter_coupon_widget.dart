import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/styles.dart';

// ignore: must_be_immutable
class EnterCouponWidget extends StatelessWidget {
  var controller;

  EnterCouponWidget({required this.controller});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Obx(
      () => Container(
        width: 1.sw,
        height: .07.sh,
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
        decoration: BoxDecoration(
          color: CustomColors.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Transform.rotate(
                    angle: .4,
                    child: SvgPicture.asset(
                      'assets/images/sign_up/coupon_icon.svg',
                      height: 30,
                    ),
                  ),
                  SizedBox(width: 6),
                  AutoSizeText(
                    'Coupon',
                    minFontSize: 8,
                    maxLines: 1,
                    maxFontSize: 14,
                    style: textTheme.headline1?.copyWith(color: Colors.white),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: TextField(
                controller: controller.couponController.value,
                decoration: CustomStyle.couponInputDecoration,
                onChanged: (value) => controller.changeIcon(),
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              flex: 1,
              child: Container(
                height: 1.sw,
                decoration: BoxDecoration(
                  color: controller.couponIsEmpty.value
                      ? Colors.white
                      : Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Icon(
                    Icons.check,
                    color: controller.couponIsEmpty.value
                        ? CustomColors.redLightColor
                        : Colors.white,
                    size: .04.sh,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
