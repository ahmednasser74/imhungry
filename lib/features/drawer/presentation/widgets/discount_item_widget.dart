import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'coupon_custom_painter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscountItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CustomPaint(
          size: Size(1.sw, .17.sh),
          painter: CouponShapeCustomPainter(),
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: .10.sw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '20% Off',
                        style: textTheme.headline1?.copyWith(
                          fontSize: 26.sp,
                          color: CustomColors.primaryColor,
                        ),
                      ),
                      Text(
                        'On top meals',
                        style: textTheme.caption?.copyWith(fontSize: 20.sp),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    'assets/images/iam_hungry_bite_logo.svg',
                    height: .08.sh,
                  )
                ],
              ),
            ),
            Container(
              margin:
                  EdgeInsets.symmetric(vertical: .012.sh, horizontal: .02.sw),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                color: Colors.grey.withOpacity(.6),
              ),
              width: .95.sw,
              height: .03.sh,
              child: Center(
                child: Text(
                  'Valid until 12/10/2021',
                  style: textTheme.subtitle1,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
