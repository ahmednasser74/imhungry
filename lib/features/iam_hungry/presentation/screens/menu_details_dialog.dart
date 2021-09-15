import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:iam_hungry2/core/src/widgets/add_without_checkbox.dart';
import 'package:iam_hungry2/core/src/widgets/custom_button.dart';
import 'package:iam_hungry2/core/src/widgets/plus_and_minus_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuDetailsDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: .06.sw, vertical: .02.sh),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Scaffold(
          body: Column(
            children: [
              Container(
                height: .25.sh,
                width: 1.sw,
                padding: EdgeInsets.all(8.0),
                decoration: CustomStyle.containerShadowDecoration,
                child: Image.asset(
                  'assets/images/app_icon.png',
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Meal Title', style: textTheme.caption),
                        RichText(
                          text: TextSpan(
                            text: 'SAR ',
                            style: textTheme.bodyText1,
                            children: [
                              TextSpan(
                                text: '20',
                                style: textTheme.headline4,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    AutoSizeText(
                      'best in the world',
                      style: textTheme.bodyText1,
                      maxLines: 1,
                      maxFontSize: 16,
                      minFontSize: 6,
                    ),
                    SizedBox(height: .01.sh),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/hungry/calories_icon.svg',
                          height: 15,
                          width: 15,
                        ),
                        SizedBox(height: .01.sh),
                        Text('300 Calories', style: textTheme.headline5),
                      ],
                    ),
                    SizedBox(height: .01.sh),
                    Text('Adds On:', style: textTheme.caption),
                    SizedBox(
                      height: .14.sh,
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: 5,
                        itemBuilder: (context, index) => AddAndWithOutCheckBox(
                          title: 'title',
                          value: true,
                          onChanged: (value) {},
                          hasPrice: true,
                          price: 2.5,
                        ),
                      ),
                    ),
                    SizedBox(height: .01.sh),
                    Text('Without:', style: textTheme.caption),
                    SizedBox(
                      height: .14.sh,
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: 5,
                        itemBuilder: (context, index) => AddAndWithOutCheckBox(
                          title: 'title',
                          value: true,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    SizedBox(height: .01.sh),
                    Center(
                      child: Column(
                        children: [
                          PlusAndMinusButton(
                            quantity: 1,
                            onTapMinus: () {},
                            onTapPlus: () {},
                          ),
                          SizedBox(height: 10),
                          CustomButton(
                            onPressed: () {},
                            title: 'Add to cart',
                            fonSize: 16.sp,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: AutoSizeText(
                              'Cancel',
                              style: textTheme.caption?.copyWith(
                                color: CustomColors.redLightColor,
                              ),
                              maxFontSize: 20,
                              minFontSize: 6,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
