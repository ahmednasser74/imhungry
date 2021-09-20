import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/features/auth/presentation/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (controller) => Scaffold(
        backgroundColor: controller.colorTween.value,
        body: Center(
          child: ScaleTransition(
            scale: controller.animationScaleIcon,
            child: RotationTransition(
              turns: controller.animationRotationIcon,
              child: SvgPicture.asset(
                controller.imageChaned()
                    ? 'assets/images/iam_hungry_logo.svg'
                    : 'assets/images/iam_hungry_bite_logo.svg',
                width: .60.sw,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
