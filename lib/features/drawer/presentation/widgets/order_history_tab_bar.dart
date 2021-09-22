import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/features/drawer/presentation/screens/order_previous_screen.dart';
import 'package:iam_hungry2/features/drawer/presentation/screens/orders_recent_screen.dart';

class OrderHistoryTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Orders',
            style: textTheme.headline1?.copyWith(
              color: CustomColors.primaryColor,
              fontSize: 24,
            ),
          ),
          centerTitle: true,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.white,
          leading: InkWell(
            child: Icon(Icons.arrow_back, color: CustomColors.primaryColor),
            onTap: () => Get.back(),
          ),
          bottom: TabBar(
            labelStyle: textTheme.caption?.copyWith(fontSize: 20),
            labelColor: Colors.black,
            isScrollable: true,
            indicatorColor: CustomColors.primaryColor,
            unselectedLabelColor: CustomColors.redLightColor,
            unselectedLabelStyle: textTheme.caption,
            tabs: [
              const Tab(child: Text('Recent')),
              const Tab(child: Text('Previous')),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            OrdersRecentScreen(),
            OrdersPreviousScreen(),
          ],
        ),
      ),
    );
  }
}
