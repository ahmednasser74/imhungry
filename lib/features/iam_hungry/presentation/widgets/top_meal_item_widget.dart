import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iam_hungry2/core/src/widgets/plus_and_minus_button.dart';

class TopMealItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      margin: EdgeInsets.symmetric(horizontal: .06.sw, vertical: .05.sh),
      decoration: CustomStyle.containerShadowDecoration.copyWith(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Container(
            height: .24.sh,
            decoration: CustomStyle.containerShadowDecoration.copyWith(
              image: DecorationImage(
                image: AssetImage('assets/images/hungry/meal_icon.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: .02.sh),
          AutoSizeText(
            'mealTitle',
            style: textTheme.caption,
            maxLines: 1,
            minFontSize: 15,
          ),
          SizedBox(height: .02.sh),
          AutoSizeText(
            'description',
            style: textTheme.bodyText1,
            maxLines: 3,
            textAlign: TextAlign.center,
            minFontSize: 12,
            maxFontSize: 40,
          ),
          SizedBox(height: .01.sh),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/hungry/calories_icon.svg',
                width: .04.sw,
              ),
              Text(
                '120 Calories',
                style: textTheme.headline5,
              ),
            ],
          ),
          SizedBox(height: .01.sh),
          RichText(
            text: TextSpan(
              text: 'SAR ',
              style: textTheme.bodyText1,
              children: [
                TextSpan(
                  text: '20',
                  style: textTheme.headline4?.copyWith(fontSize: 30.sp),
                ),
              ],
            ),
          ),
          SizedBox(height: .1.sh),
          PlusAndMinusButton(
            width: .25.sw,
            height: .04.sh,
            quantity: 2,
            onTapPlus: () {},
            onTapMinus: () {},
          )
        ],
      ),
    );
  }
}
