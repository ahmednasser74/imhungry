import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlusAndMinusButton extends StatefulWidget {
  final double? width, height;
  final void Function(int value) onTapPlus, onTapMinus;
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
  State<PlusAndMinusButton> createState() => _PlusAndMinusButtonState();
}

class _PlusAndMinusButtonState extends State<PlusAndMinusButton> {
  int changeQuantity = 1;

  @override
  void initState() {
    super.initState();
    changeQuantity = widget.quantity;
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      child: Container(
        width: widget.width ?? .25.sw,
        height: widget.height ?? .035.sh,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  if (changeQuantity > 1) {
                    changeQuantity--;
                    widget.onTapMinus(changeQuantity);
                    setState(() {});
                  }
                },
                child: Icon(Icons.remove, color: Colors.white,size: 20.sp),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.black,
                child: Center(
                  child: AutoSizeText(
                    changeQuantity.toString(),
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
                onTap: () {
                  changeQuantity++;
                  widget.onTapPlus(changeQuantity);
                  setState(() {});
                },
                child: Icon(Icons.add, color: Colors.white,size: 20.sp),
              ),
            )
          ],
        ),
      ),
    );
  }
}
