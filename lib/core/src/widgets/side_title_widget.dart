import 'package:flutter/material.dart';
import 'package:iam_hungry2/core/src/colors.dart';

class SideTitleWidget extends StatelessWidget {
  final String title;
  final Color color;
  final TextStyle? textStyle;

  const SideTitleWidget({
    required this.title,
    this.color = CustomColors.primaryColor,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Text(
        title,
        style: textStyle ?? textTheme.headline3?.copyWith(color: color),
      ),
    );
  }
}
