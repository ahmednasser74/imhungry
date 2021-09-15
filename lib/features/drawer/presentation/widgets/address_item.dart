import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressItem extends StatelessWidget {
  final bool hasAddressDetails, hasBackgroundShadow;
  final String title, streetAddress;

  AddressItem({
    required this.title,
    required this.streetAddress,
    this.hasAddressDetails = true,
    this.hasBackgroundShadow = true,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: .12.sh,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      decoration: hasBackgroundShadow
          ? CustomStyle.containerShadowDecoration.copyWith(
              borderRadius: BorderRadius.all(Radius.zero),
            )
          : CustomStyle.containerShadowDecoration.copyWith(
              borderRadius: BorderRadius.all(Radius.zero),
              boxShadow: [],
            ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            title,
            style: textTheme.headline4?.copyWith(fontSize: 18),
            maxLines: 1,
            minFontSize: 4,
            maxFontSize: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      'Street',
                      maxLines: 1,
                      minFontSize: 6,
                      maxFontSize: 20,
                    ),
                    AutoSizeText(
                      '14 Faysal Okasha, Atati, El Talbia, Giza Governorate, Egypt',
                      style: textTheme.headline6,
                      maxLines: 1,
                      minFontSize: 8,
                      maxFontSize: 16,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Visibility(
                  visible: hasAddressDetails,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              'Building',
                              style: textTheme.headline6,
                              maxLines: 1,
                              minFontSize: 4,
                              maxFontSize: 12,
                            ),
                            AutoSizeText(
                              '05',
                              style: TextStyle(
                                  color: Colors.black, fontFamily: 'nunito'),
                              maxLines: 1,
                              minFontSize: 6,
                              maxFontSize: 10,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 6),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              'Apartment',
                              maxLines: 1,
                              minFontSize: 6,
                              maxFontSize: 16,
                            ),
                            AutoSizeText(
                              '2031',
                              maxLines: 1,
                              minFontSize: 6,
                              maxFontSize: 12,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
