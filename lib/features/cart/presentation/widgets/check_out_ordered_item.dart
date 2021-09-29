import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:iam_hungry2/core/src/widgets/plus_and_minus_button.dart';
import 'package:iam_hungry2/core/controller/check_out_controller.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/menu/menu_model.dart';
import 'delete_item_from_cart_dialog.dart';

class CheckOutOrderedItem extends StatelessWidget {
  final bool hasPlusAndMinus;
  final MenuModel menuModel;
  final int index;

  CheckOutOrderedItem({
    required this.hasPlusAndMinus,
    required this.menuModel,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final controller = Get.find<CheckOutController>();
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
                child: Image.network(menuModel.image),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      menuModel.name,
                      style: textTheme.caption,
                      maxFontSize: 20,
                      minFontSize: 8,
                      maxLines: 1,
                    ),
                    AutoSizeText(
                      menuModel.description,
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
                          TextSpan(
                            text: menuModel.price.toString(),
                            style: textTheme.headline5?.copyWith(
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Visibility(
                      visible: hasPlusAndMinus,
                      child: PlusAndMinusButton(
                        width: .18.sw,
                        height: .032.sh,
                        quantity: menuModel.quantity,
                        onTapPlus: (value) => controller.incrementQuantity(index),
                        onTapMinus: (value) => controller.decrementQuantity(index),
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
                image: menuModel.image,
                sandwichName: menuModel.name,
                onTapRemove: () {
                  controller.deleteItem(
                    controller.getMenuItems.elementAt(index),
                  );
                  Get.back();
                },
              ),
            ),
            child: Icon(
              Icons.delete_forever,
              color: CustomColors.primaryColor,
              size: .1.sw,
            ),
          ),
        ],
        //    actions: [swipeDeleteItem(context)],
      ),
    );
  }
}
