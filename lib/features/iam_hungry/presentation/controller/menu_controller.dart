import 'package:get/get.dart';
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
  MenuModel get itemModel => _itemModel;
  void changeQuantity(int quantity) {
    _itemModel = _itemModel.copyWith(quantity: quantity);
  }

  void addAddons(AddonModel addonModel) {
    _itemModel.addOnList.add(addonModel);
  }

  void removeAddons(int index) {
    _itemModel.addOnList.removeAt(index);
  }

  void addWithout(WithoutModel withoutModel) {
    _itemModel.withOutList.add(withoutModel);
  }

  void removeWithout(int index) {
    _itemModel.withOutList.removeAt(index);
  }

  void onChangeAddons(
      {required bool isSelected,
      required int index,
      required AddonModel addonModel}) {
    if (isSelected) {
      addAddons(addonModel);
    } else {
      removeAddons(index);
    }
  }

  void onChangeWithout(
      {required bool isSelected,
      required int index,
      required WithoutModel withoutModel}) {
    if (isSelected) {
      addWithout(withoutModel);
    } else {
      removeWithout(index);
    }
  }

  @override
  void onInit() async {
    await getMenu();
    super.onInit();
  }

  Future<void> getMenu() async {
    change(null, status: RxStatus.loading());
    final categoriesModel = await menuUseCase(params: NoParams());
    change(categoriesModel.categories, status: RxStatus.success());
  }
}
