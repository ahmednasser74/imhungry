import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReorderPreviousItemWidget extends StatelessWidget {
  final VoidCallback onTapReorder;

  const ReorderPreviousItemWidget({
    required this.onTapReorder,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: .70.sw,
      child: Card(
        margin: EdgeInsets.all(8),
        elevation: 3,
        shadowColor: Colors.black54,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: EdgeInsets.all(.02.sw),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 2,
                child:
                    SvgPicture.asset('assets/images/iam_hungry_bite_logo.svg'),
              ),
              SizedBox(width: 10),
              Expanded(
                flex: 4,
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: onTapReorder,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.rotate_right,
                              color: CustomColors.primaryColor,
                            ),
                            AutoSizeText(
                              'reorder'.tr,
                              style: textTheme.headline5,
                              maxLines: 3,
                              minFontSize: 6,
                              maxFontSize: 18,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: AutoSizeText(
                        '1x Single Burger, 1x Family Meal',
                        style: TextStyle(color: Colors.grey),
                        maxLines: 3,
                        minFontSize: 6,
                        maxFontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
