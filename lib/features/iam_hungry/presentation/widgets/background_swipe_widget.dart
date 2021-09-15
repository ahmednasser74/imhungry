import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iam_hungry2/core/src/styles.dart';

class BackgroundSwipeWidget extends StatelessWidget {
  final Color color;
  final double transformAngle;

  BackgroundSwipeWidget({required this.color, required this.transformAngle});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Transform.rotate(
        angle: transformAngle,
        child: Container(
          height: .72.sh,
          width: .8.sw,
          decoration: CustomStyle.containerShadowDecoration.copyWith(
            color: color,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
