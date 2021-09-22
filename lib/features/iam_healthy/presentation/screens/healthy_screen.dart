import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:iam_hungry2/core/src/widgets/custom_app_bar.dart';
import 'package:iam_hungry2/core/src/widgets/horizontal_list_builder.dart';
import 'package:iam_hungry2/core/src/widgets/side_title_widget.dart';
import 'package:iam_hungry2/features/iam_healthy/presentation/widgets/healthy_menu_item.dart';
import 'package:iam_hungry2/features/auth/presentation/controller/otp_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HealthyScreen extends GetView<OtpController> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.08.sh),
        child: CustomAppBar(
          centerTitle: '',
          iconsColor: CustomColors.greenColor,
        ),
      ),
      body: ListView(
        children: [
          const SideTitleWidget(
            title: 'Popular Salads',
            color: CustomColors.greenColor,
          ),
          SizedBox(
            height: .50.sh,
            child: HorizontalListBuilder(
              itemCount: 5,
              itemBuilder: (_, index) => HealthyMenuItem(
                onTap: () {},
              ),
            ),
          ),
          SideTitleWidget(title: 'Create Own!', color: CustomColors.greenColor),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: CustomStyle.containerShadowDecoration,
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('createOwnSalad'.tr, style: textTheme.overline),
                  SvgPicture.asset(
                    'assets/images/healthy/creat_your_own_healty.svg',
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
