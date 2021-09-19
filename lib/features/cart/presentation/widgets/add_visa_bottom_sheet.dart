import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                        onPressed: () => Navigator.of(context).pop()),
                  )
                ],
              ),
              TextField(
                decoration: CustomStyle.authInputDecoration.copyWith(
                  hintText: 'Name Of Card',
                ),
              ),
              TextField(
                decoration: CustomStyle.authInputDecoration.copyWith(
                  hintText: 'Card No.',
                ),
              ),
              TextField(
                decoration: CustomStyle.authInputDecoration.copyWith(
                  hintText: 'Expired Date',
                ),
              ),
              TextField(
                decoration: CustomStyle.authInputDecoration.copyWith(
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
