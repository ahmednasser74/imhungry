import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/routes.dart';
import 'package:iam_hungry2/core/usecases/usecase.dart';
import 'package:iam_hungry2/features/drawer/data/models/location/locations_model.dart';
import 'package:iam_hungry2/features/drawer/domin/usecases/locations_use_case.dart';
import 'package:permission_handler/permission_handler.dart';

class AddressController extends GetxController with StateMixin<LocationsModel> {
  final LocationsUseCase locationsUseCase;

  AddressController({required this.locationsUseCase});

  @override
  void onInit() async {
    super.onInit();
  }

  Future<void> getLocations() async {
    change(null, status: RxStatus.loading());
    final locationList = await locationsUseCase.call(params: NoParams());
    change(locationList, status: RxStatus.success());
  }

  void addAddressMapBtn() async {
    var status = await Permission.location.request();
    if (status.isGranted) {
      Get.toNamed(Routes.mapScreen);
    } else if (status.isDenied) {}
  }
}
