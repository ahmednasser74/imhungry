import 'package:flutter/material.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HealthyMenuItem extends StatelessWidget {
  final VoidCallback onTap;

  HealthyMenuItem({required this.onTap});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(6),
        padding: EdgeInsets.symmetric(vertical: 6),
        decoration: CustomStyle.containerShadowDecoration,
        width: .55.sw,
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                child: Image.asset(
                  'assets/images/healthy/salad_two.png',
                ),
                borderRadius: BorderRadius.all(Radius.circular(14)),
              ),
            ),
            Text('Ceaser Salad', style: textTheme.headline3),
            RichText(
              text: TextSpan(
                text: 'SAR ',
                style: textTheme.bodyText1,
                children: [
                  TextSpan(text: '20', style: textTheme.overline),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
