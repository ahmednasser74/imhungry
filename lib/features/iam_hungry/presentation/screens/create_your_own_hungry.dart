import 'package:flutter/material.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:iam_hungry2/core/src/widgets/custom_app_bar.dart';
import 'package:iam_hungry2/core/src/widgets/custom_button.dart';
import 'package:iam_hungry2/core/src/widgets/horizontal_list_builder.dart';
import 'package:iam_hungry2/core/src/widgets/plus_and_minus_button.dart';
import 'package:iam_hungry2/core/src/widgets/side_title_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/widgets/create_own_multi_selection_item.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/widgets/create_own_single_selection_item.dart';

class CreateOwnItemModel {
  final String title;
  final int price;
  final String image;
  bool isSelected = false;

  CreateOwnItemModel(
      {required this.title, required this.image, required this.price});
}

class CreateYourOwnHungryScreen extends StatelessWidget {
  final List<CreateOwnItemModel> createOwnMeat = [
    CreateOwnItemModel(
        title: 'meat 1', image: 'assets/images/app_icon.png', price: 10),
    CreateOwnItemModel(
        title: 'meat 2', image: 'assets/images/app_icon.png', price: 20),
    CreateOwnItemModel(
        title: 'meat 3', image: 'assets/images/app_icon.png', price: 30),
    CreateOwnItemModel(
        title: 'meat 4', image: 'assets/images/app_icon.png', price: 40),
    CreateOwnItemModel(
        title: 'meat 5', image: 'assets/images/app_icon.png', price: 50),
    CreateOwnItemModel(
        title: 'meat 6', image: 'assets/images/app_icon.png', price: 60),
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.08.sh),
        child: CustomAppBar(
          centerTitle: 'Create Own',
          backgroundColor: Color(0xff3A3A3C),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: .24.sh,
            width: 1.sw,
            decoration: CustomStyle.containerShadowDecoration.copyWith(
              borderRadius: const BorderRadius.only(
                bottomRight: const Radius.circular(30),
                bottomLeft: const Radius.circular(30),
              ),
              color: const Color(0xff3A3A3C),
              boxShadow: [
                const BoxShadow(color: Color(0xff3A3A3C), blurRadius: 0)
              ],
            ),
            child: Image.asset(
              'assets/images/hungry/create_your_own_background.png',
              width: 50,
              height: 100,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SideTitleWidget(title: 'Title', color: Colors.black),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        textCapitalization: TextCapitalization.words,
                        textInputAction: TextInputAction.done,
                        style: textTheme.caption,
                        decoration: CustomStyle.roundedBorderInputDecoration.copyWith(
                            hintText: 'Sandwich Name',
                            hintStyle: textTheme.bodyText1),
                      ),
                    ),
                    const SideTitleWidget(title: 'Bread', color: Colors.black),
                    HorizontalListBuilder(
                      itemCount: 5,
                      itemBuilder: (_, index) => CreateOwnSingleSelectionItem(
                        index: index,
                        selectIndex: 2,
                        onTap: () {},
                      ),
                    ),
                    const SideTitleWidget(title: 'Meat', color: Colors.black),
                    HorizontalListBuilder(
                      itemCount: createOwnMeat.length,
                      itemBuilder: (_, index) => CreateOwnMultiSelectionItem(
                        index: index,
                        list: createOwnMeat,
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    PlusAndMinusButton(
                      width: .25.sw,
                      height: .04.sh,
                      quantity: 1,
                      onTapMinus: () {},
                      onTapPlus: () {},
                    ),
                    CustomButton(
                      title: 'Add to Cart',
                      onPressed: () {},
                      marginVertical: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
