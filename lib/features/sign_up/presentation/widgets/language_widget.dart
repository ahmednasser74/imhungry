import 'package:flutter/material.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageWidget extends StatelessWidget {
  final String languageName;
  final VoidCallback onTap;
  final Color backgroundColor;
  final Color textColor;

  LanguageWidget({
    required this.languageName,
    required this.onTap,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 4),
          height: .07.sh,
          decoration: CustomStyle.containerShadowDecoration.copyWith(
            color: backgroundColor,
          ),
          child: Center(
            child: Text(
              languageName,
              style: textTheme.headline3?.copyWith(
                color: textColor,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
