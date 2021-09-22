import 'package:flutter/material.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HealthyMenuItem extends StatelessWidget {
  final VoidCallback onTap;

  const HealthyMenuItem({required this.onTap});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(6),
        padding: const EdgeInsets.symmetric(vertical: 6),
        decoration: CustomStyle.containerShadowDecoration,
        width: .52.sw,
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: Image.asset(
                  'assets/images/healthy/salad_two.png',
                ),
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
