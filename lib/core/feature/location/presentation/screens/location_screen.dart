import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/feature/location/presentation/controller/location_controller.dart';

import '../../../../src/colors.dart';
import '../../../../src/styles.dart';
import '../../../../src/widgets/items/address_item.dart';

class LocationScreen extends GetView<LocationController> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: AutoSizeText(
              'Address',
              maxLines: 1,
              maxFontSize: 60,
              minFontSize: 25,
            ),
          ),
          SizedBox(height: .01.sh),
          GestureDetector(
            onTap: controller.onTapOpenMap,
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
    );
  }
}
