import 'package:get/get.dart';
import 'package:iam_hungry2/core/controller/check_out_controller.dart';
import 'package:iam_hungry2/core/usecases/usecase.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/addon/addon_model.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/category/category_model.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/menu/menu_model.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/without/without_model.dart';
import 'package:iam_hungry2/features/iam_hungry/domin/usecases/menu_use_case.dart';

class MenuController extends GetxController
    with StateMixin<List<CategoryModel>> {
  MenuController({required this.menuUseCase});

  final MenuUseCase menuUseCase;
  MenuModel _itemModel = MenuModel(addOnList: [], withOutList: []);

  set itemModel(MenuModel item) => _itemModel = item;
  void _createItemModel() =>
      _itemModel = MenuModel(addOnList: [], withOutList: []);
  MenuModel get itemModel => _itemModel;
  double totalAddOns = 0;

  @override
  void onInit() async {
    await getMenu();
    super.onInit();
  }

  void changeQuantity(int quantity) {
    _itemModel = _itemModel.copyWith(quantity: quantity);
  }

  void onChangeAddons(
      {required bool isSelected,
      required int index,
      required AddonModel addonModel}) {
    if (isSelected) {
      _itemModel.addOnList.add(addonModel);
      totalAddOns = _itemModel.addOnList
          .map((e) => e.price)
          .reduce((e1, e2) => e1 + e2)
          .toDouble();
    } else {
      _itemModel.addOnList.removeAt(index);
    }
  }

  void onChangeWithout(
      {required bool isSelected,
      required int index,
      required WithoutModel withoutModel}) {
    if (isSelected) {
      _itemModel.withOutList.add(withoutModel);
    } else {
      _itemModel.withOutList.removeAt(index);
    }
  }

  void onTapAddToCart(MenuModel menuItem) {
    itemModel = itemModel.copyWith(
      active: menuItem.active,
      id: menuItem.id,
      image: menuItem.image,
      description: menuItem.description,
      price: menuItem.price,
      name: menuItem.name,
      totalAdds: totalAddOns,
    );
    Get.find<CheckOutController>().addMenuItem = itemModel;
    Get.back();
    _createItemModel();
  }

  void onTapCancel() {
    Get.back();
    _createItemModel();
  }

  Future<void> getMenu() async {
    change(null, status: RxStatus.loading());
    final categoriesModel = await menuUseCase(params: NoParams());
    change(categoriesModel.categories, status: RxStatus.success());
  }
}
