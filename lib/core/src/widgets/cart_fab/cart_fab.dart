import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/controller/check_out_controller.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'cart_animation.dart';

class CartFab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GetBuilder<CheckOutController>(
      builder: (controller) => Visibility(
        visible: controller.getMenuLength == 0 ? false : true,
        child: FloatingActionButton(
          onPressed: () => Get.to(() => CartAnimation()),
          backgroundColor: CustomColors.primaryColor,
          child: Stack(
            children: [
              Center(
                child: SvgPicture.asset(
                  'assets/images/cart/shopping_cart_icon.svg',
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  radius: 11.r,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundColor: CustomColors.primaryColor,
                    radius: 9.r,
                    child: AutoSizeText(
                      '${controller.getMenuLength}',
                      maxLines: 1,
                      minFontSize: 6,
                      maxFontSize: 14,
                      style: textTheme.subtitle2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
