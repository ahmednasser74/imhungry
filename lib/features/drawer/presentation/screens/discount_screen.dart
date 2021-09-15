import 'package:flutter/material.dart';
import 'package:iam_hungry2/core/src/widgets/custom_app_bar.dart';
import 'package:iam_hungry2/features/drawer/presentation/widgets/discount_item_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.06.sh),
        child: CustomAppBar(centerTitle: 'Discount'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => DiscountItemWidget(),
      ),
    );
  }
}
