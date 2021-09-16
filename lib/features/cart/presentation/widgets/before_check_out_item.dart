import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BeforeCheckOutItem extends StatelessWidget {
  final VoidCallback onTap;

  const BeforeCheckOutItem({
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8.0),
        decoration: CustomStyle.containerShadowDecoration,
        width: .25.sw,
        height: .025.sh,

        child: Column(
          children: [
            Expanded(
              child: Image.asset('assets/images/hungry/sandwich_icon.png'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: AutoSizeText(
                'Single Burger',
                maxLines: 1,
                maxFontSize: 30,
                minFontSize: 8,
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'SAR ',
                style: textTheme.subtitle1?.copyWith(fontSize: 8),
                children: [
                  TextSpan(
                    text: '20',
                    style: textTheme.headline5,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
