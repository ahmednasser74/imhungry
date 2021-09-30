import 'package:get/get.dart';
import 'package:iam_hungry2/core/controller/check_out_controller.dart';
import 'package:iam_hungry2/core/usecases/usecase.dart';
import 'package:iam_hungry2/features/cart/domin/usecases/before_checkout_use_case.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/category/category_model.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/menu_item/menu_item_model.dart';

class BeforeCheckoutController extends GetxController
    with StateMixin<CategoryModel> {
  final BeforeCheckoutUseCase beforeCheckoutUseCase;

  BeforeCheckoutController({required this.beforeCheckoutUseCase});

  @override
  void onInit() {
    super.onInit();
    // getBeforeCheckout();
  }

  Future<void> getBeforeCheckout() async {
    change(null, status: RxStatus.loading());
    final beforeCheckoutList = await beforeCheckoutUseCase(params: NoParams());
    change(beforeCheckoutList, status: RxStatus.success());
  }

  void onAddToCart(MenuItemModel menuItem) {
    Get.find<CheckOutController>().addMenuItem = menuItem;
  }
}
