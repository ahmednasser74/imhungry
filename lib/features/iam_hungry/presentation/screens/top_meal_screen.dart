import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/widgets/custom_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/widgets/background_swipe_widget.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/widgets/top_meal_item_widget.dart';

class TopMealScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.08.sh),
        child: CustomAppBar(centerTitle: 'TopMeal'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: RichText(
              text: TextSpan(
                text: 'I\'m Hungry\n',
                style: textTheme.headline1?.copyWith(
                  color: CustomColors.primaryColor,
                  fontSize: 24.sp,
                ),
                children: [
                  TextSpan(
                    text: 'to eat...',
                    style: textTheme.headline1?.copyWith(fontSize: 24.sp),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                BackgroundSwipeWidget(
                  color: CustomColors.redLightColor,
                  transformAngle: .08,
                ),
                BackgroundSwipeWidget(
                  color: Color(0xFFFFCDD2),
                  transformAngle: -.08,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: .05.sw),
                  child: Swiper(
                    itemWidth: 1.sw,
                    itemHeight: 1.sh,
                    layout: SwiperLayout.STACK,
                    itemCount: 4,
                    itemBuilder: (context, index) => TopMealItemWidget(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
