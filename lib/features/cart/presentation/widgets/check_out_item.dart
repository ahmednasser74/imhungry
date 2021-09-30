import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:iam_hungry2/core/src/widgets/plus_and_minus_button.dart';
import 'package:iam_hungry2/core/controller/check_out_controller.dart';
import 'package:iam_hungry2/core/utils/helper_methods.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/menu_item/menu_item_model.dart';
import 'delete_item_from_cart_dialog.dart';

class CheckOutItem extends StatelessWidget {
  final bool hasPlusAndMinus;
  final MenuItemModel menuModel;
  final int index;

  CheckOutItem({
    required this.hasPlusAndMinus,
    required this.menuModel,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final controller = Get.find<CheckOutController>();
    return Padding(
      key: UniqueKey(),
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
                flex: 2,
                child: CachedNetworkImage(
                  imageUrl: menuModel.image,
                  progressIndicatorBuilder: HelperMethods.onCacheImageLoading,
                ),
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        AutoSizeText(
                          'SAR ',
                          style: textTheme.subtitle1?.copyWith(fontSize: 12.sp),
                          maxLines: 1,
                          maxFontSize: 18,
                          minFontSize: 4,
                        ),
                        Text(
                          '${menuModel.price}',
                          style: textTheme.headline4?.copyWith(fontSize: 18.sp),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Visibility(
                      visible: hasPlusAndMinus,
                      child: PlusAndMinusButton(
                        width: .19.sw,
                        height: .032.sh,
                        quantity: menuModel.quantity,
                        onTapPlus: (value) =>
                            controller.incrementQuantity(index),
                        onTapMinus: (value) =>
                            controller.decrementQuantity(index),
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
