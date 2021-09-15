import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/routes.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderHistoryItem extends StatefulWidget {
  @override
  _OrderHistoryItemState createState() => _OrderHistoryItemState();
}

class _OrderHistoryItemState extends State<OrderHistoryItem> {
  bool orderDetailsVisibility = false;

  void toggleVisibility() {
    setState(() {
      orderDetailsVisibility = !orderDetailsVisibility;
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: toggleVisibility,
      child: Container(
        margin: EdgeInsets.all(8.0),
        height: .20.sh,
        decoration: CustomStyle.containerShadowDecoration,
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: CustomStyle.containerShadowDecoration.copyWith(
                  color: CustomColors.primaryColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    topLeft: Radius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AutoSizeText(
                        'OrderNo. #123456789',
                        style: textTheme.headline2,
                        maxFontSize: 30,
                        minFontSize: 8,
                        maxLines: 1,
                      ),
                      GestureDetector(
                        child: Icon(
                          orderDetailsVisibility
                              ? Icons.close
                              : Icons.more_horiz,
                          size: 25,
                          color: orderDetailsVisibility
                              ? Colors.white
                              : CustomColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Address: Home1'),
                            Text(
                              'Date : 10/02/2021',
                              style: textTheme.subtitle1,
                            ),
                          ],
                        ),
                        Text('Order :'),
                        Text(
                          '1x signle burger, 1x chicken, 3x rizo 1x signle burger, 1x chicken, 3x rizo',
                          style: textTheme.subtitle1,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total Cost'),
                            RichText(
                              text: TextSpan(
                                text: 'SAR ',
                                style: textTheme.subtitle1,
                                children: [
                                  TextSpan(
                                    text: '100',
                                    style: textTheme.headline4,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: orderDetailsVisibility,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.8),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () => Get.toNamed(Routes.orderRateScreen),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/drawer/like_icon.svg',
                                  width: .10.sw,
                                  color: CustomColors.primaryColor,
                                ),
                                Text('Rate Order')
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () => Get.toNamed(Routes.orderInfoScreen),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/drawer/bike_driver_icon.svg',
                                  width: .17.sw,
                                ),
                                Text('Track Order')
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () => Get.toNamed(Routes.helpScreen),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: CustomColors.primaryColor,
                                  child: Text('?', style: textTheme.headline2),
                                ),
                                Text('Help')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
