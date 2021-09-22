import 'package:flutter/material.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/widgets/menu_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'menu_details_dialog.dart';

class MenuScreen extends StatelessWidget {
  final int? index;

  MenuScreen({this.index});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 12),
            child: RichText(
              text: TextSpan(
                text: index == null ? 'I\'m Hungry\n' : 'I\'m Healthy\n',
                style: textTheme.headline1?.copyWith(
                  color: index ==null
                      ? CustomColors.primaryColor
                      : CustomColors.greenColor,
                  fontSize: 24.sp,
                ),
                children: [
                  TextSpan(
                    text: 'to eat...',
                    style: textTheme.headline1?.copyWith(fontSize: 24.sp),
                  ),
                ],
              ),
            ),
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              double aspectRatio = .7;
              double width = constraints.maxWidth;
              double itemHeight = (width * .4);
              double height = constraints.maxHeight + itemHeight;
              return OverflowBox(
                minWidth: width,
                minHeight: height,
                maxHeight: height,
                maxWidth: width,
                child: GridView.builder(
                  padding:
                      EdgeInsets.only(bottom: itemHeight, top: itemHeight / 2),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: aspectRatio,
                  ),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Transform.translate(
                      offset: Offset(0, index.isEven ? itemHeight * .5 : 0),
                      child: MenuItem(
                        onTap: () => showDialog(
                          context: context,
                          builder: (context) => MenuDetailsDialog(),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
