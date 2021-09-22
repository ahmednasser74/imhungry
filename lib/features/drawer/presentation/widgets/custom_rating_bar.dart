import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iam_hungry2/core/src/colors.dart';

class CustomRatingBar extends StatelessWidget {
  const CustomRatingBar({
    required this.ratingValue,
  });

  final Function(double ratingValue) ratingValue;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RatingBar(
        initialRating: 0.5,
        itemSize: 40,
        allowHalfRating: true,
        onRatingUpdate: ratingValue,
        ratingWidget: RatingWidget(
          full:const Icon(
            Icons.star,
            color: CustomColors.primaryColor,
          ),
          half:const Icon(
            Icons.star_half_outlined,
            color: CustomColors.primaryColor,
          ),
          empty: Icon(
            Icons.star,
            color: Colors.grey[300],
          ),
        ),
      ),
    );
  }
}
