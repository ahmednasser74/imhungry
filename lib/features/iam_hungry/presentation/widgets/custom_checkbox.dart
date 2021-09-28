import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iam_hungry2/core/src/colors.dart';

class CustomCheckBox extends StatelessWidget {
  final Function(bool value) onChanged;
  final String title;
  final double? price;
  final bool value, hasPrice;

  const CustomCheckBox({
    required this.title,
    required this.value,
    required this.onChanged,
    this.hasPrice = false,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () => onChanged(!value),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: .05.sh,
            child: Checkbox(
              value: value,
              activeColor: CustomColors.primaryColor,
              onChanged: (bool? newValue) => onChanged(newValue ?? false),
            ),
          ),
          Expanded(child: Text(title)),
          Visibility(
            visible: hasPrice ? true : false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(hasPrice ? '+$price' : '', style: textTheme.caption),
            ),
          )
        ],
      ),
    );
  }
}
