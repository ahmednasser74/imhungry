import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:iam_hungry2/core/src/widgets/bite_custom_painter.dart';

class CreateOwnMultiSelectionItem extends StatelessWidget {
  final int index;
  final List list;
  final VoidCallback onTap;

  CreateOwnMultiSelectionItem({
    required this.index,
    required this.onTap,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(6),
        width: .25.sw,
        decoration: list[index].isSelected
            ? CustomStyle.containerShadowDecoration.copyWith(
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(color: Colors.transparent, blurRadius: 0)
                ],
              )
            : CustomStyle.containerShadowDecoration,
        child: CustomPaint(
          painter: list[index].isSelected
              ? BiteShapeCustomPaint(borderColor: CustomColors.primaryColor)
              : EmptyCustomPainter(),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: list[index].isSelected ? 8 : 0),
            child: Column(
              children: [
                AutoSizeText(
                  'Meat',
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
