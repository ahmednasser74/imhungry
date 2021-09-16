import 'package:flutter/material.dart';
import 'package:iam_hungry2/core/src/styles.dart';

class TotalPriceWidget extends StatelessWidget {
  final double subTotal, discount, tax, total;

  const TotalPriceWidget({
    required this.subTotal,
    required this.discount,
    required this.tax,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all( 8.0),
      child: Container(
        decoration: CustomStyle.containerShadowDecoration,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ReceiptItemWidget(
                    receiptTitle: 'Sub Total',
                    price: subTotal,
                  ),
                  ReceiptItemWidget(receiptTitle: 'Delivery', price: 10),
                  ReceiptItemWidget(receiptTitle: 'Discount', price: discount),
                  ReceiptItemWidget(receiptTitle: 'Tax', price: tax),
                  Divider(color: Colors.grey, thickness: 1),
                  ReceiptItemWidget(receiptTitle: 'Total', price: total),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReceiptItemWidget extends StatelessWidget {
  final String receiptTitle;
  double price;

  ReceiptItemWidget({required this.receiptTitle, required this.price});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(receiptTitle, style: textTheme.caption),
        Text(price.toString(), style: textTheme.caption),
      ],
    );
  }
}
