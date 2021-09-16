import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iam_hungry2/core/src/colors.dart';

class ProceedButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  ProceedButton({
    required this.onTap,
    this.title = 'Proceed >>>',
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 1.sw,
        height: .075.sh,
        color: CustomColors.primaryColor,
        child: Center(
          child: Text(
            title,
            style: textTheme.headline1?.copyWith(
              color: Colors.white,
              fontSize: 22.sp,
            ),
          ),
        ),
      ),
    );
  }
}
