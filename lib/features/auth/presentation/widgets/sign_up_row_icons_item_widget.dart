import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUpIconsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: .09.sh,
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SvgPicture.asset(
                    'assets/images/sign_up/sign_up_feed_your_hunger.svg',
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: AutoSizeText(
                    'feedYourHunger'.tr,
                    style: textTheme.headline2?.copyWith(color: Colors.white),
                    maxFontSize: 14,
                    minFontSize: 6,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SvgPicture.asset(
                    'assets/images/sign_up/easy_ordering_icon.svg',
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: AutoSizeText(
                    'easeOrdering'.tr,
                    style: textTheme.headline2?.copyWith(color: Colors.white),
                    maxFontSize: 14,
                    minFontSize: 6,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SvgPicture.asset(
                    'assets/images/sign_up/coupon_icon.svg',
                    height: .06.sh,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: AutoSizeText(
                    'dealsCoupon'.tr,
                    style: textTheme.headline2?.copyWith(color: Colors.white),
                    maxFontSize: 14,
                    minFontSize: 6,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SvgPicture.asset(
                    'assets/images/sign_up/delivery_icon.svg',
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: AutoSizeText(
                    'fastDelivery'.tr,
                    style: textTheme.headline2?.copyWith(color: Colors.white),
                    maxFontSize: 14,
                    minFontSize: 6,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
