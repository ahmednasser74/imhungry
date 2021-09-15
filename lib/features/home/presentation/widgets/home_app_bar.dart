import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/routes.dart';
import 'package:get/get.dart';

class HomeAppBar extends StatelessWidget {
  final VoidCallback onTapDrawerIcon;
  final Color color;

  HomeAppBar({
    required this.onTapDrawerIcon,
    this.color = CustomColors.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return AppBar(
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 14),
          child: InkWell(
            onTap: () => Get.toNamed(Routes.searchScreen),
            child: SvgPicture.asset(
              'assets/images/search_icon.svg',
              color: color,
            ),
          ),
        )
      ],
      leading: InkWell(
        onTap: onTapDrawerIcon,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: SvgPicture.asset(
            'assets/images/burger_menu_icon.svg',
            color: color,
          ),
        ),
      ),
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text('location'.tr + 'Egypt', style: textTheme.headline5),
    );
  }
}
