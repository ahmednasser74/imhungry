import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'cart_animation.dart';

class CartFab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).push(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                CartAnimation(),
          ),
        );
      },
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
                  '1',
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
    );
  }
}
