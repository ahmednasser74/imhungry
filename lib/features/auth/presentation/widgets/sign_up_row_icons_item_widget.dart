import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpRowIconsItemWidget extends StatelessWidget {
  final String image;
  final String title;

  SignUpRowIconsItemWidget({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      width: .22.sw,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: SvgPicture.asset(image, height: .08.sh),
          ),
          Expanded(
            flex: 2,
            child: AutoSizeText(
              title,
              style: textTheme.headline2?.copyWith(color: Colors.white),
              maxFontSize: 14,
              minFontSize: 6,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
