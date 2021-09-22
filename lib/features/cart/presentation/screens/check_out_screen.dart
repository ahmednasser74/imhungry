import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/routes.dart';
import 'package:iam_hungry2/core/src/widgets/custom_app_bar.dart';
import 'package:iam_hungry2/core/src/widgets/horizontal_list_builder.dart';
import 'package:iam_hungry2/core/src/widgets/side_title_widget.dart';
import 'package:iam_hungry2/features/cart/presentation/widgets/before_check_out_item.dart';
import 'package:iam_hungry2/features/cart/presentation/widgets/check_out_ordered_item.dart';
import 'package:iam_hungry2/features/cart/presentation/widgets/proceeed_button.dart';
import 'package:iam_hungry2/features/cart/presentation/widgets/total_price_widget.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckOutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.08.sh),
        child: CustomAppBar(centerTitle: 'Check Out'),
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.only(bottom: .08.sh),
            children: [
              Column(
                children: [
                  SizedBox(
                    height: .4.sh,
                    child: Scrollbar(
                      radius: Radius.circular(10),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 4,
                        itemBuilder: (_, index) => CheckOutOrderedItem(
                          onTapRemoveItem: () {},
                          onTapMinus: () {},
                          onTapPlus: () {},
                          quantity: 1,
                          hasPlusAndMinus: true,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Divider(
                        color: CustomColors.primaryColor,
                        thickness: 10,
                      ),
                      Shimmer.fromColors(
                        highlightColor: CustomColors.primaryColor,
                        baseColor: Colors.black,
                        period: Duration(milliseconds: 1000),
                        child: const SideTitleWidget(
                          title: 'Before Check Out',
                          color: Colors.black,
                        ),
                      ),
                      HorizontalListBuilder(
                        heightList: .022.sh,
                        itemCount: 5,
                        itemBuilder: (_, index) => BeforeCheckOutItem(
                          onTap: () {},
                        ),
                      ),
                      const TotalPriceWidget(
                        subTotal: 40,
                        discount: 5,
                        tax: 10,
                        total: 45,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
           Align(
            alignment: Alignment.bottomCenter,
            child:  ProceedButton(
              onTap: () => Get.toNamed(Routes.chooseLocationScreen),
            ),
          )
        ],
      ),
    );
  }
}
