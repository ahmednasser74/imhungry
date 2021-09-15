import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:iam_hungry2/core/src/widgets/bite_custom_painter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateOwnSingleSelectionItem extends StatelessWidget {
  final int index, selectIndex;
  final VoidCallback onTap;

  const CreateOwnSingleSelectionItem({
    required this.index,
    required this.selectIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // padding: EdgeInsets.all(4),
        margin: const EdgeInsets.all(6),
        width: .25.sw,
        decoration: selectIndex == index
            ? CustomStyle.containerShadowDecoration.copyWith(
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(color: Colors.transparent, blurRadius: 0)
                ],
              )
            : CustomStyle.containerShadowDecoration,
        child: CustomPaint(
          painter: selectIndex == index
              ? BiteShapeCustomPaint(borderColor: CustomColors.primaryColor)
              : EmptyCustomPainter(),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: selectIndex == index ? 8 : 0),
            child: Column(
              children: [
                AutoSizeText(
                  'title',
                  maxFontSize: 20,
                  minFontSize: 8,
                  maxLines: 1,
                ),
                Expanded(
                  child: SvgPicture.asset(
                    'assets/images/iam_hungry_bite_logo.svg',
                    height: 40,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'SAR ',
                    style: textTheme.subtitle1,
                    children: [
                      TextSpan(text: '20', style: textTheme.headline4),
                    ],
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
