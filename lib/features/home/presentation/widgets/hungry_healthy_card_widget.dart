import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HungryAndHealthyCardWidget extends StatelessWidget {
  final String image;
  final VoidCallback onTap;

  HungryAndHealthyCardWidget({required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: .25.sh,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10),
          decoration: CustomStyle.containerShadowDecoration,
          child: SvgPicture.asset(image),
        ),
      ),
    );
  }
}
