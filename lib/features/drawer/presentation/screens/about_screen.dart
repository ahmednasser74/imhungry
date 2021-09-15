import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iam_hungry2/core/src/widgets/custom_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.08.sh),
        child: CustomAppBar(centerTitle: 'About Us'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
