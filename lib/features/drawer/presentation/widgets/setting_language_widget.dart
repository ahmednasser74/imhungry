import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingLanguageWidget extends StatelessWidget {
  final String languageName;
  final Color languageTextColor, borderColor;
  final VoidCallback onTap;

  const SettingLanguageWidget({
    required this.languageName,
    required this.borderColor,
    required this.languageTextColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 5,
            color: borderColor,
            style: BorderStyle.solid,
          ),
          shape: BoxShape.circle,
        ),
        width: .11.sw,
        height: .055.sh,
        child: Center(
          child: Text(
            languageName,
            style: textTheme.headline5?.copyWith(
              color: languageTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
