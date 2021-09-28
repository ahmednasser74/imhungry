import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:iam_hungry2/core/src/widgets/custom_button.dart';

class AddVisaCardBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          height: .50.sh,
          decoration: CustomStyle.containerShadowDecoration,
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Add New Card', style: textTheme.headline4),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.close,
                        color: Colors.black,
                        size: 25,
                      ),
                      onPressed: () => Get.back(),
                    ),
                  )
                ],
              ),
              TextField(
                decoration: CustomStyle.roundedBorderInputDecoration.copyWith(
                  hintText: 'Name Of Card',
                ),
              ),
              TextField(
                decoration: CustomStyle.roundedBorderInputDecoration.copyWith(
                  hintText: 'Card No.',
                ),
              ),
              TextField(
                decoration: CustomStyle.roundedBorderInputDecoration.copyWith(
                  hintText: 'Expired Date',
                ),
              ),
              TextField(
                decoration: CustomStyle.roundedBorderInputDecoration.copyWith(
                  hintText: 'CVV',
                ),
              ),
              CustomButton(
                title: 'Add Card',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
