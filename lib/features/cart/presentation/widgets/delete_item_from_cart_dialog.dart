import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/widgets/custom_button.dart';

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
        height: .22.sh,
        width: 1.sw,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.network(image, height: .051.sh),
                  ),
                  Center(
                    child: AutoSizeText(
                      'Remove $sandwichName ?',
                      style: textTheme.caption,
                      minFontSize: 10,
                      maxFontSize: 24,
                      maxLines: 1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomButton(
                        onPressed: () => Get.back(),
                        title: 'No',
                        fontFamily: 'nunito',
                        paddingVertical: 0,
                        marginVertical: 0,
                        paddingHorizontal: 30,
                        borderColor: CustomColors.primaryColor,
                        backgroundColor: Colors.white,
                        textColor: CustomColors.primaryColor,
                        borderRadius: 10,
                      ),
                      SizedBox(
                        width: .05.sw,
                      ),
                      CustomButton(
                        onPressed: onTapRemove,
                        title: 'Yes',
                        fontFamily: 'nunito',
                        paddingVertical: 0,
                        marginVertical: 0,
                        paddingHorizontal: 30,
                        borderRadius: 10,
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
