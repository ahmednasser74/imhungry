import 'package:get/get.dart';
import 'package:iam_hungry2/core/controller/check_out_controller.dart';
import 'package:iam_hungry2/core/usecases/usecase.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/addon/addon_model.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/category/category_model.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/menu_item/menu_item_model.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/without/without_model.dart';
import 'package:iam_hungry2/features/iam_hungry/domin/usecases/menu_use_case.dart';

class MenuController extends GetxController
    with StateMixin<List<CategoryModel>> {
  MenuController({required this.menuUseCase});

  final MenuUseCase menuUseCase;
  MenuItemModel _itemModel = MenuItemModel(addOnList: [], withOutList: []);

  set itemModel(MenuItemModel item) => _itemModel = item;

  void _createItemModel() =>
      _itemModel = MenuItemModel(addOnList: [], withOutList: [], totalAdds: 0);

  MenuItemModel get itemModel => _itemModel;
  double totalAddonPrice = 0;
  String totalAddonName = '';
  String totalWithoutName = '';

  @override
  void onInit() async {
    super.onInit();
    await getMenu();
  }

  void changeQuantity(int quantity) {
    _itemModel = _itemModel.copyWith(quantity: quantity);
  }

  void onChangeAddons({
    required bool isSelected,
    required int index,
    required AddonModel addonModel,
  }) {
    if (isSelected) {
      _itemModel.addOnList.add(addonModel);

      _itemModel = _itemModel.copyWith(totalAdds: totalAddonPrice);
    } else {
      _itemModel.addOnList.removeAt(index);
    }
    if (_itemModel.addOnList.isNotEmpty) {
      totalAddonName = _itemModel.addOnList.map((e) => e.name).join(', ');
      totalAddonPrice = _itemModel.addOnList
          .map((e) => e.price)
          .reduce((e1, e2) => e1 + e2)
          .toDouble();
    }
  }

  void onChangeWithout({
    required bool isSelected,
    required int index,
    required WithoutModel withoutModel,
  }) {
    if (isSelected) {
      _itemModel.withOutList.add(withoutModel);
    } else {
      _itemModel.withOutList.removeAt(index);
    }
    if (_itemModel.withOutList.isNotEmpty)
      totalWithoutName = _itemModel.withOutList.map((e) => e.name).join(', ');
  }

  void onTapAddToCart(MenuItemModel menuItem) {
    String withoutName =
        totalWithoutName != '' ? 'Without: ' + totalWithoutName : '';
    String addOntName = totalAddonName != '' ? 'Extra: ' + totalAddonName : '';
    itemModel = itemModel.copyWith(
      active: menuItem.active,
      id: menuItem.id,
      image: menuItem.image,
      description: addOntName + '\n' + withoutName,
      price: menuItem.price + totalAddonPrice,
      name: menuItem.name,
    );
    Get.find<CheckOutController>().addMenuItem = itemModel;
    Get.back();
    _createItemModel();
    totalAddonName = '';
    totalWithoutName = '';
    totalAddonPrice = 0;
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
