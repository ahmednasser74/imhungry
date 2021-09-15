import 'package:flutter/material.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingSectionTitle extends StatelessWidget {
  final String title;
  final bool haveEditingButton;
  final VoidCallback? onTapEditProfile;

  SettingSectionTitle({
    required this.title,
    this.haveEditingButton = false,
    this.onTapEditProfile,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      width: 1.sw,
      height: .05.sh,
      color: CustomColors.primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Center(
              child: Text(title, style: textTheme.headline2),
            ),
          ),
          Visibility(
            visible: haveEditingButton ? true : false,
            child: GestureDetector(
              onTap: onTapEditProfile,
              child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
