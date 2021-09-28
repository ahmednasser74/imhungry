import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:iam_hungry2/core/src/widgets/custom_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatelessWidget {
  final searchTEC = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.08.sh),
        child: CustomAppBar(centerTitle: 'Search'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: CustomStyle.roundedBorderInputDecoration.copyWith(
                  prefix: Padding(
                    padding: EdgeInsets.only(right: 6),
                    child: SvgPicture.asset(
                      'assets/images/search_icon.svg',
                      width: .02.sw,
                      height: .02.sh,
                    ),
                  ),
                ),
                style: textTheme.caption,
                controller: searchTEC,
                autofocus: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
