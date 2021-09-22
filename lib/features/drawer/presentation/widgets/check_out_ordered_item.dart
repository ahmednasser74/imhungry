import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckOutOrderedItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Container(
        height: .16.sh,
        decoration: CustomStyle.containerShadowDecoration,
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: SvgPicture.asset(
                'assets/images/iam_hungry_bite_logo.svg',
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    'Single Burger',
                    style: textTheme.caption,
                    maxFontSize: 20,
                    minFontSize: 8,
                    maxLines: 1,
                  ),
                  AutoSizeText(
                    'best sandwich in saudi arabia',
                    style: textTheme.subtitle1,
                    maxFontSize: 12,
                    minFontSize: 8,
                    maxLines: 3,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'SAR ',
                      style: textTheme.subtitle1,
                      children: [
                        TextSpan(
                          text: '20',
                          style: textTheme.headline4,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
