import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iam_hungry2/core/utils/helper_methods.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/menu_item/menu_item_model.dart';

class BeforeCheckOutItem extends StatelessWidget {
  final VoidCallback onTap;
  final MenuItemModel menuItem;

  const BeforeCheckOutItem({
    required this.onTap,
    required this.menuItem,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8.0),
        decoration: CustomStyle.containerShadowDecoration,
        width: .25.sw,
        height: .025.sh,
        child: Column(
          children: [
            Expanded(
              child: CachedNetworkImage(
                imageUrl: menuItem.image,
                progressIndicatorBuilder: HelperMethods.onCacheImageLoading,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: AutoSizeText(
                menuItem.name,
                maxLines: 1,
                maxFontSize: 30,
                minFontSize: 8,
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'SAR ',
                style: textTheme.subtitle1?.copyWith(fontSize: 8),
                children: [
                  TextSpan(
                    text: '${menuItem.price}',
                    style: textTheme.headline5,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
