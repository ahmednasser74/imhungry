import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/widgets/custom_button.dart';
import 'package:iam_hungry2/features/auth/presentation/controller/slider_controller.dart';

class SliderScreen extends GetView<SliderController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/sign_up/slider_background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              PageView(
                controller: controller.pageController,
                onPageChanged: (index) => controller.changePageIndex = index,
                children: controller.sliderItemWidgetList,
              ),
              Positioned.fill(
                bottom: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButton(
                          onPressed: controller.onPressedSkip,
                          title: 'Skip',
                          textColor: Colors.black,
                          backgroundColor: Colors.transparent,
                        ),
                        CustomButton(
                          onPressed: controller.onPressedNext,
                          title: controller.getPageIndex !=
                                  controller.sliderItemWidgetList.length - 1
                              ? 'Next'
                              : 'Finish',
                          backgroundColor: Colors.transparent,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        for (int i = 0; i < 3; i++)
                          i == controller.getPageIndex
                              ? controller.buildPageIndicator(true)
                              : controller.buildPageIndicator(false),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
