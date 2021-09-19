import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/routes.dart';
import 'package:permission_handler/permission_handler.dart';

class AddressController extends GetxController {
  void addAddressMapBtn() async {
    var status = await Permission.location.request();
    if (status.isGranted) {
      Get.toNamed(Routes.mapScreen);
    } else if (status.isDenied) {}
  }
}
