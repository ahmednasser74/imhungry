import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:iam_hungry2/core/src/colors.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({
    required this.label,
    required this.groupValue,
    required this.value,
    required this.onChanged,
  });

  final String label, groupValue, value;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (value != groupValue) onChanged(value);
      },
      child: Row(
        children: <Widget>[
          SizedBox(
            height: 20,
            width: 20,
            child: Radio(
              groupValue: groupValue,
              value: value,
              activeColor: CustomColors.primaryColor,
              onChanged: (newValue) {
                onChanged(newValue);
              },
            ),
          ),
          SizedBox(width: 6),
          AutoSizeText(
            label,
            maxLines: 1,
            maxFontSize: 20,
            minFontSize: 8,
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
