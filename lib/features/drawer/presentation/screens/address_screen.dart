import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/widgets/address_screen_widget.dart';
import 'package:iam_hungry2/core/src/widgets/custom_app_bar.dart';
import 'package:iam_hungry2/features/drawer/presentation/controller/address_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressScreen extends GetView<AddressController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.08.sh),
        child: CustomAppBar(centerTitle: 'Address'),
      ),
      body: AddressScreenWidget(
        onTapOpenMap: controller.addAddressMapBtn,
      ),
    );
  }
}

