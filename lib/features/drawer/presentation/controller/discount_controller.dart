import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/routes.dart';
import 'package:iam_hungry2/core/usecases/usecase.dart';
import 'package:iam_hungry2/features/drawer/data/models/discount/discounts_model.dart';
import 'package:iam_hungry2/features/drawer/domin/usecases/discounts_use_case.dart';
import 'package:permission_handler/permission_handler.dart';

class DiscountController extends GetxController with StateMixin<DiscountsModel> {
  final DiscountUseCase discountUseCase;

  DiscountController({required this.discountUseCase});

  @override
  void onInit() async {
    // await getDiscounts();
    super.onInit();
  }

  Future<void> getDiscounts() async {
    change(null, status: RxStatus.loading());
    final discountsList = await discountUseCase.call(params: NoParams());
    change(discountsList, status: RxStatus.success());
  }

  void addAddressMapBtn() async {
    var status = await Permission.location.request();
    if (status.isGranted) {
      Get.toNamed(Routes.mapScreen);
    } else if (status.isDenied) {}
  }
}
