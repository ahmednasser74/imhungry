import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:iam_hungry2/core/src/widgets/side_title_widget.dart';
import 'package:iam_hungry2/core/src/widgets/items/address_item.dart';

class PickUpAndDineInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Expanded(
      child: Scaffold(
        body: ListView(
          children: [
            SideTitleWidget(
              title: 'Nearest Branch :',
              color: Colors.black,
              textStyle: textTheme.caption,
            ),
            SizedBox(
              height: .3.sh,
              child: Scrollbar(
                thickness: 5,
                radius: Radius.circular(10),
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => AddressItem(
                    title: 'Branch Name',
                    streetAddress: 'Haram ,Giza',
                    hasAddressDetails: false,
                  ),
                ),
              ),
            ),
            SideTitleWidget(
              title: 'Choose Branch :',
              color: Colors.black,
              textStyle: textTheme.caption,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(thickness: 1, color: Colors.grey[400]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                decoration: CustomStyle.roundedBorderInputDecoration,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
