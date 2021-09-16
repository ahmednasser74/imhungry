import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:iam_hungry2/core/src/widgets/plus_and_minus_button.dart';

import 'delete_item_from_cart_dialog.dart';

class CheckOutOrderedItem extends StatelessWidget {
  final bool hasPlusAndMinus;
  final int quantity;
  final VoidCallback onTapMinus, onTapPlus, onTapRemoveItem;

  CheckOutOrderedItem({
    required this.hasPlusAndMinus,
    required this.onTapRemoveItem,
    required this.quantity,
    required this.onTapMinus,
    required this.onTapPlus,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Slidable(
        actionPane: SlidableBehindActionPane(),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          height: .16.sh,
          decoration: CustomStyle.containerShadowDecoration,
          child: Row(
            children: [
              Expanded(
                  flex: 3,
                  child: Image.asset('assets/images/hungry/sandwich_icon.png')),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      'Single Burger',
                      style: textTheme.caption,
                      maxFontSize: 20,
                      minFontSize: 8,
                      maxLines: 1,
                    ),
                    AutoSizeText(
                      'best sandwich in ksa',
                      style: textTheme.bodyText1,
                      maxFontSize: 12,
                      minFontSize: 8,
                      maxLines: 3,
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: hasPlusAndMinus
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'SAR ',
                        style: textTheme.subtitle1,
                        children: [
                          TextSpan(text: '20', style: textTheme.headline4),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Visibility(
                      visible: hasPlusAndMinus,
                      child: PlusAndMinusButton(
                        width: .18.sw,
                        height: .032.sh,
                        quantity: quantity,
                        onTapPlus: onTapPlus,
                        onTapMinus: onTapMinus,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        secondaryActions: [
          GestureDetector(
            onTap: () => showDialog(
              context: context,
              builder: (_) => DeleteItemFromCartDialog(
                image: 'assets/images/hungry/sandwich_icon.png',
                sandwichName: 'sandwichName',
                onTapRemove: onTapRemoveItem,
              ),
            ),
            child: Icon(
              Icons.delete_forever,
              color: CustomColors.primaryColor,
              size: .1.sw,
            ),
          )
        ],
        //    actions: [swipeDeleteItem(context)],
      ),
    );
  }
}
