import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iam_hungry2/core/src/styles.dart';

class MenuItem extends StatelessWidget {
  final VoidCallback onTap;

  MenuItem({required this.onTap});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(12),
        decoration: CustomStyle.containerShadowDecoration.copyWith(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Image.asset('assets/images/app_icon.png'),
            ),
            Expanded(
              flex: 6,
              child: Column(
                children: [
                  SizedBox(height: 4),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: AutoSizeText(
                      'Meal Title',
                      style: textTheme.headline3,
                      maxFontSize: 30,
                      minFontSize: 6,
                      maxLines: 1,
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/images/hungry/calories_icon.svg',
                        height: 20,
                      ),
                      SizedBox(width: 4),
                      Text('20 Calories', style: textTheme.headline5)
                    ],
                  ),
                  SizedBox(height: 4),
                  RichText(
                    text: TextSpan(
                      text: 'SAR ',
                      style: textTheme.bodyText1,
                      children: [
                        TextSpan(text: '20', style: textTheme.headline4),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
