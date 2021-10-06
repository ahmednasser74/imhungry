import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:iam_hungry2/core/utils/helper_methods.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/menu_item/menu_item_model.dart';

class MenuItem extends StatelessWidget {
  final VoidCallback onTap;
  final List<MenuItemModel> menuModel;
  final int index;

  MenuItem({
    required this.onTap,
    required this.menuModel,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final menu = menuModel.elementAt(index);
    return Container(
      color: Colors.white,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: CustomStyle.containerShadowDecoration.copyWith(
            borderRadius: BorderRadius.circular(26),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CachedNetworkImage(
                    imageUrl: menu.image,
                    progressIndicatorBuilder: HelperMethods.onCacheImageLoading,
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Column(
                  children: [
                    SizedBox(height: 4),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: AutoSizeText(
                        menu.name,
                        style: textTheme.headline3,
                        maxFontSize: 30,
                        minFontSize: 6,
                        maxLines: 1,
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/hungry/calories_icon.svg',
                          height: 20,
                        ),
                        SizedBox(width: 4),
                        Text('${menu.calories} Calories',
                            style: textTheme.headline5)
                      ],
                    ),
                    SizedBox(height: 4),
                    RichText(
                      text: TextSpan(
                        text: 'SAR ',
                        style: textTheme.bodyText1,
                        children: [
                          TextSpan(
                            text: menu.price.toString(),
                            style: textTheme.headline4,
                          ),
                        ],
                      ),
                    )
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
