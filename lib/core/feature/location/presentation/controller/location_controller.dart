import 'dart:io';

import 'package:get/get.dart';
import 'package:iam_hungry2/core/feature/location/data/models/location/locations_model.dart';
import 'package:iam_hungry2/core/src/routes.dart';
import 'package:iam_hungry2/core/usecases/usecase.dart';
import 'package:iam_hungry2/core/feature/location/domin/usecases/locations_use_case.dart';
import 'package:permission_handler/permission_handler.dart';

class LocationController extends GetxController
    with StateMixin<LocationsModel> {
  final LocationsUseCase locationsUseCase;

  LocationController({required this.locationsUseCase});

  @override
  void onInit() async {
    change(null, status: RxStatus.empty());

    super.onInit();
  }

  Future<void> getLocations() async {
    change(null, status: RxStatus.loading());
    final locationList = await locationsUseCase.call(params: NoParams());
    change(locationList, status: RxStatus.success());
  }

  void onTapOpenMap() async {
    print('add location button pressed');
    final status = await Permission.location.request();
    if (Platform.isAndroid) {
      if (status.isGranted) {
        Get.toNamed(Routes.mapScreen);
      } else if (status.isDenied) {}
    } else {
      Get.toNamed(Routes.mapScreen);
    }
  }
}
