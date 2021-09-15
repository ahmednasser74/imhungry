import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/widgets/custom_app_bar.dart';
import 'package:iam_hungry2/features/drawer/presentation/widgets/check_out_ordered_item.dart';
import 'package:iam_hungry2/features/drawer/presentation/widgets/order_stepper_info_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.06.sh),
        child: CustomAppBar(centerTitle: 'Order Info'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text('#12123123', style: textTheme.headline3),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.qr_code_scanner,
                color: Colors.black,
                size: .17.sh,
              ),
            ),
            Text(
              'will be out\' of the kitchen in 10 minute',
              style: textTheme.bodyText1,
            ),
            Text(
              'Preparing',
              style: textTheme.headline1?.copyWith(
                color: CustomColors.primaryColor,
                fontSize: 30,
              ),
            ),
            OrderTrackStepperWidget(),
            Divider(color: CustomColors.primaryColor, thickness: 1.5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order :', style: textTheme.caption),
                Icon(Icons.receipt_outlined, color: Colors.black, size: 30),
              ],
            ),
            Expanded(
              child: Scrollbar(
                radius: Radius.circular(10),
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) => CheckOutOrderedItem(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
