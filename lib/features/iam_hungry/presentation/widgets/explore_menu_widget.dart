import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:get/get.dart';

class ExploreMenuWidget extends StatelessWidget {
  final VoidCallback onTapMeals, onTapSandwich, onTapDessert;

  const ExploreMenuWidget({
    required this.onTapMeals,
    required this.onTapSandwich,
    required this.onTapDessert,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: .28.sh,
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: onTapMeals,
              child: Container(
                decoration: CustomStyle.containerShadowDecoration,
                margin: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/hungry/meal_icon.png',
                            width: 1.sw,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: AutoSizeText(
                          'meal'.tr,
                          style: textTheme.headline5,
                          maxLines: 1,
                          maxFontSize: 20,
                          minFontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: onTapSandwich,
                    child: Container(
                      decoration: CustomStyle.containerShadowDecoration,
                      margin: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/hungry/sandwich_icon.png',
                                  width: 1.sw,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: AutoSizeText(
                                'sandwich'.tr,
                                style: textTheme.headline5,
                                maxLines: 1,
                                maxFontSize: 20,
                                minFontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Expanded(
                  child: GestureDetector(
                    onTap: onTapDessert,
                    child: Container(
                      decoration: CustomStyle.containerShadowDecoration,
                      margin: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/hungry/dessert_icon.png',
                                  width: 1.sw,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: AutoSizeText(
                                'dessert'.tr,
                                style: textTheme.headline5,
                                maxLines: 1,
                                maxFontSize: 20,
                                minFontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
