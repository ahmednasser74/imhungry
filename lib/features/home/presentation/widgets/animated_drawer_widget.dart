import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class AnimatedDrawerWidget extends StatelessWidget {
  final Widget child;
  var controller;

  AnimatedDrawerWidget({required this.controller, required this.child});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => WillPopScope(
        onWillPop: controller.onWillPop,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 250),
          transform: Matrix4.translationValues(
            controller.xOffset,
            controller.yOffset,
            0,
          )..scale(controller.scaleFactor),
          child: GestureDetector(
            onHorizontalDragUpdate: (e) {
              if (e.delta.dx > 0) {
                controller.setScreenSizeByAnimation();
              } else {
                controller.setScreenSizeByNormal();
              }
            },
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    controller.borderRadiusScreen,
                  ),
                  child: child,
                ),
                Visibility(
                  visible: controller.xOffset != 0 ? true : false,
                  child: GestureDetector(
                    onTap: () {
                      if (controller.xOffset != 0)
                        controller.setScreenSizeByNormal();
                    },
                    child: Container(color: Colors.transparent),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
