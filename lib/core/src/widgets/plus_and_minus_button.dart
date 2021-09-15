import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlusAndMinusButton extends StatelessWidget {
  final double? width, height;
  final VoidCallback onTapPlus, onTapMinus;
  final int quantity;
  final Color color;

  PlusAndMinusButton({
    required this.onTapPlus,
    required this.onTapMinus,
    this.quantity = 1,
    this.color = CustomColors.primaryColor,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      child: Container(
        width: width ?? .25.sw,
        height: height ?? .035.sh,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: InkWell(
                onTap: onTapMinus,
                child: Icon(Icons.remove, color: Colors.white),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.black,
                child: Center(
                  child: AutoSizeText(
                    quantity.toString(),
                    style: textTheme.headline2,
                    minFontSize: 10,
                    maxFontSize: 20,
                    maxLines: 1,
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: onTapPlus,
                child: Icon(Icons.add, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
