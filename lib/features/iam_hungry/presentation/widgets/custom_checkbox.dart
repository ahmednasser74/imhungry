import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iam_hungry2/core/src/colors.dart';

class CustomCheckBox extends StatefulWidget {
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
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChanged = false;

  @override
  void initState() {
    super.initState();
    isChanged = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        isChanged = !isChanged;
        widget.onChanged(isChanged);
        setState(() {});
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: .05.sh,
            child: Checkbox(
              value: isChanged,
              activeColor: CustomColors.primaryColor,
              onChanged: (_) {
                isChanged = !isChanged;
                widget.onChanged(isChanged);
                setState(() {});
              },
            ),
          ),
          Expanded(child: Text(widget.title)),
          Visibility(
            visible: widget.hasPrice ? true : false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(widget.hasPrice ? '+${widget.price}' : '',
                  style: textTheme.caption),
            ),
          )
        ],
      ),
    );
  }
}
