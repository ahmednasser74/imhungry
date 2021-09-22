import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerIemWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final TextStyle? textStyle;

  const DrawerIemWidget({
    required this.onTap,
    required this.text,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 4),
        child: Container(
          width: 1.sw,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: AutoSizeText(
              text,
              maxLines: 1,
              maxFontSize: 40,
              minFontSize: 20,
              style: textStyle ?? textTheme.headline3,
            ),
          ),
        ),
      ),
    );
  }
}
