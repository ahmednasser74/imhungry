import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DeleteItemFromCartDialog extends StatelessWidget {
  final String image, sandwichName;
  final VoidCallback onTapRemove;

  const DeleteItemFromCartDialog({
    required this.image,
    required this.sandwichName,
    required this.onTapRemove,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        height: .25.sh,
        width: 1.sw,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(child: Image.asset(image, height: .1.sh)),
                      SizedBox(width: 4),
                      Expanded(
                        flex: 3,
                        child: AutoSizeText(
                          'Remove $sandwichName ?',
                          style: textTheme.headline4,
                          minFontSize: 1,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () => Get.back(),
                        child: Text('No', style: textTheme.subtitle2),
                      ),
                      SizedBox(width: .05.sw,),
                      TextButton(
                        onPressed: onTapRemove,
                        child: Text('Yes', style: textTheme.subtitle2),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
