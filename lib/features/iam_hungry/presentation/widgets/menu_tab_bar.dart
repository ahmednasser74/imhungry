import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/screens/menu_screen.dart';

class MenuTabBar extends StatelessWidget {
  final int selectedPage;

  MenuTabBar({this.selectedPage = 0});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return DefaultTabController(
      initialIndex: selectedPage,
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        // floatingActionButton: FloatingCartButton(title: HUNGRY),
        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.white,
          leading: InkWell(
            child: Icon(Icons.arrow_back, color: CustomColors.primaryColor),
            onTap: () => Navigator.pop(context),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: SvgPicture.asset(
                'assets/images/search_icon.svg',
                width: 30,
                height: 30,
              ),
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            labelStyle: textTheme.caption?.copyWith(fontSize: 30),
            labelColor: Colors.black,
            indicatorColor: Colors.transparent,
            unselectedLabelColor: Colors.red[200],
            unselectedLabelStyle: textTheme.caption,
            tabs: [
              Tab(child: Text('Meal')),
              Tab(child: Text('Meat')),
              Tab(child: Text('Chicken')),
              Tab(child: Text('Dessert')),
              Tab(child: Text('Breakfast')),
              Tab(child: Text('Sides')),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MenuScreen(),
            Container(color: Colors.greenAccent, width: 100, height: 100),
            MenuScreen(),
            Container(color: Colors.black, width: 100, height: 100),
            MenuScreen(),
            Container(color: Colors.orange, width: 100, height: 100),
          ],
        ),
      ),
    );
  }
}
