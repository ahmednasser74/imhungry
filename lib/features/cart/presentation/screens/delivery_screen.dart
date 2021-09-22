import 'package:flutter/material.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:iam_hungry2/core/src/widgets/side_title_widget.dart';
import 'package:iam_hungry2/core/src/widgets/items/address_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeliveryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SideTitleWidget(title: 'Address', color: Colors.black),
              SizedBox(height: .02.sh),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  width: 1.sw,
                  height: .08.sh,
                  decoration: CustomStyle.containerShadowDecoration.copyWith(
                    borderRadius: BorderRadius.all(Radius.zero),
                  ),
                  child: Icon(
                    Icons.add,
                    size: .10.sw,
                    color: CustomColors.redLightColor,
                  ),
                ),
              ),
              SizedBox(height: .02.sh),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) => AddressItem(
                    title: 'Home2',
                    streetAddress: 'Haram ,Giza',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
