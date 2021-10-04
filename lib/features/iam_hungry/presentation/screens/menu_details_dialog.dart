import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:iam_hungry2/core/utils/helper_methods.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/menu_item/menu_item_model.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/controller/menu_controller.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/widgets/custom_checkbox.dart';
import 'package:iam_hungry2/core/src/widgets/custom_button.dart';
import 'package:iam_hungry2/core/src/widgets/plus_and_minus_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuDetailsDialog extends GetView<MenuController> {
  final List<MenuItemModel> menuItemList;
  final int index;

  MenuDetailsDialog({
    required this.menuItemList,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final menuItem = menuItemList.elementAt(index);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: .06.sw, vertical: .02.sh),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Scaffold(
          body: Column(
            children: [
              Container(
                height: .25.sh,
                width: 1.sw,
                padding: EdgeInsets.all(8.0),
                decoration: CustomStyle.containerShadowDecoration,
                child: CachedNetworkImage(
                  imageUrl: menuItem.image,
                  fit: BoxFit.fill,
                  progressIndicatorBuilder: HelperMethods.onCacheImageLoading,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 3,
                          child: AutoSizeText(
                            menuItem.name,
                            style: textTheme.caption,
                            maxLines: 1,
                            minFontSize: 8,
                            maxFontSize: 24,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              AutoSizeText(
                                'SAR ',
                                style: textTheme.subtitle1
                                    ?.copyWith(fontSize: 14.sp),
                                maxLines: 1,
                                maxFontSize: 18,
                                minFontSize: 4,
                              ),
                              Text(
                                '${menuItem.price}',
                                style: textTheme.headline4?.copyWith(
                                  fontSize: 18.sp,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    AutoSizeText(
                      menuItem.description,
                      style: textTheme.bodyText1,
                      maxLines: 2,
                      maxFontSize: 16,
                      minFontSize: 6,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/hungry/calories_icon.svg',
                          width: 15,
                        ),
                        SizedBox(width: .01.sw),
                        Text(
                          '${menuItem.calories} Calories',
                          style: textTheme.headline5,
                        ),
                      ],
                    ),
                    SizedBox(height: .01.sh),
                    Visibility(
                      // visible: menuItem.addOnList.length != 0 ? true : false,
                      child: Text('Adds On:', style: textTheme.caption),
                    ),
                    Visibility(
                      // visible: menuItem.addOnList.length != 0 ? true : false,
                      child: SizedBox(
                        height: .14.sh,
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: menuItem.addOnList.length,
                          itemBuilder: (context, index) {
                            final addOn = menuItem.addOnList.elementAt(index);
                            return CustomCheckBox(
                              title: addOn.name,
                              value: false,
                              onChanged: (value) => controller.onChangeAddons(
                                isSelected: value,
                                index: index,
                                addonModel: addOn,
                              ),
                              hasPrice: true,
                              price: addOn.price.toDouble(),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: .01.sh),
                    Text('Without:', style: textTheme.caption),
                    SizedBox(
                      height: .14.sh,
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: menuItem.withOutList.length,
                        itemBuilder: (context, index) {
                          final withOut = menuItem.withOutList.elementAt(index);
                          return CustomCheckBox(
                            title: withOut.name,
                            value: false,
                            onChanged: (value) => controller.onChangeWithout(
                              isSelected: value,
                              index: index,
                              withoutModel: withOut,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: .01.sh),
                    Center(
                      child: Column(
                        children: [
                          PlusAndMinusButton(
                            quantity: 1,
                            onTapMinus: controller.changeQuantity,
                            onTapPlus: controller.changeQuantity,
                          ),
                          const SizedBox(height: 10),
                          CustomButton(
                            onPressed: () =>
                                controller.onTapAddToCart(menuItem),
                            title: 'Add to cart',
                            fonSize: 16.sp,
                          ),
                          GestureDetector(
                            onTap: controller.onTapCancel,
                            child: AutoSizeText(
                              'Cancel',
                              style: textTheme.caption?.copyWith(
                                color: CustomColors.redLightColor,
                              ),
                              maxFontSize: 20,
                              minFontSize: 6,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
