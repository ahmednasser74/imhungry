import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelpItemWidget extends StatelessWidget {
  final String helpTitle;
  final VoidCallback onTap;

  HelpItemWidget({required this.helpTitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        width:1.sw,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText(
                    helpTitle,
                    minFontSize: 10,
                    maxLines: 1,
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.black)
                ],
              ),
            ),
            Divider(color: Colors.grey, thickness: 1)
          ],
        ),
      ),
    );
  }
}
