import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/routes.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HungryAndHealthyWidget extends StatelessWidget {
  const HungryAndHealthyWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => Get.toNamed(Routes.hungryScreen),
            child: Container(
              height: .25.sh,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              decoration: CustomStyle.containerShadowDecoration,
              child: SvgPicture.asset('assets/images/iam_hungry_bite_logo.svg'),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () => Get.toNamed(Routes.healthyScreen),
            child: Container(
              height: .25.sh,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              decoration: CustomStyle.containerShadowDecoration,
              child: SvgPicture.asset(
                'assets/images/healthy/iam_healthy.svg',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
