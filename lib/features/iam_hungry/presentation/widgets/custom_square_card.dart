import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iam_hungry2/core/src/styles.dart';
class CustomSquareCardHungryScreen extends StatelessWidget {
  final String image, title;
  final VoidCallback onTap;

  CustomSquareCardHungryScreen({
    required this.title,
    required this.onTap,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: CustomStyle.containerShadowDecoration,
          margin: EdgeInsets.symmetric(vertical: 2,horizontal: 8),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      image,
//                    fit: BoxFit.fill,
                      width: 1.sw,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: AutoSizeText(
                    title,
                    style: textTheme.headline5,
                    maxLines: 1,
                    maxFontSize: 20,
                    minFontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
