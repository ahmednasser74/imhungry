import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:iam_hungry2/core/src/widgets/custom_app_bar.dart';
import 'package:iam_hungry2/features/drawer/presentation/controller/address_controller.dart';
import 'package:iam_hungry2/features/drawer/presentation/widgets/address_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressScreen extends GetView<AddressController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.08.sh),
        child: CustomAppBar(centerTitle: 'Address'),
      ),
      body: Padding(
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
            SizedBox(height: .02.sh),
            GestureDetector(
              onTap: controller.addAddress,
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
            )
          ],
        ),
      ),
    );
  }
}
