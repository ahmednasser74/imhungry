import 'package:flutter/material.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:iam_hungry2/core/src/widgets/custom_app_bar.dart';
import 'package:iam_hungry2/core/src/widgets/custom_button.dart';
import 'package:iam_hungry2/features/drawer/presentation/widgets/custom_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderRateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.08.sh),
        child: CustomAppBar(centerTitle: 'Order Rate'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          Center(child: Text('#12123123', style: textTheme.headline3)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.qr_code_scanner,
              color: Colors.black,
              size: .17.sw,
            ),
          ),
          Divider(color: CustomColors.primaryColor, thickness: 1.5),
          SizedBox(height: .02.sh),
          Text(
            'How was the Food ?',
            style: textTheme.headline3,
          ),
          CustomRatingBar(
            ratingValue: (rating) {
              print('rateBar 1 :$rating');
            },
          ),
          Text('How was delivery time ?', style: textTheme.headline3),
          CustomRatingBar(ratingValue: (rating) => print('rateBar 2 :$rating')),
          Text('How was order experience ?', style: textTheme.headline3),
          CustomRatingBar(
            ratingValue: (rating) {
              print('rateBar 3 :$rating');
            },
          ),
          SizedBox(height: .02.sh),
          TextField(
            decoration: CustomStyle.roundedBorderInputDecoration.copyWith(
              hintText: 'Write your review...',
            ),
            maxLines: 5,
          ),
          SizedBox(height: .05.sh),
          Center(
            child: CustomButton(
              title: 'Submit',
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
