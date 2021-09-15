import 'package:flutter/material.dart';
import 'package:iam_hungry2/features/drawer/presentation/widgets/order_history_item.dart';

class OrdersPreviousScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 8,
        itemBuilder: (context, index) {
          return OrderHistoryItem();
        },
      ),
    );
  }
}
