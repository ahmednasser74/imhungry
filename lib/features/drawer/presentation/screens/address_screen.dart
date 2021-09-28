import 'package:flutter/material.dart';
import 'package:iam_hungry2/core/feature/location/presentation/screens/location_screen.dart';
import 'package:iam_hungry2/core/src/widgets/custom_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.08.sh),
        child: CustomAppBar(centerTitle: 'Address'),
      ),
      body: LocationScreen(),
    );
  }
}
