import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/usecases/usecase.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/category/categories/categories_model.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/category/category_model.dart';
import 'package:iam_hungry2/features/iam_hungry/domin/usecases/menu_use_case.dart';
import 'package:iam_hungry2/features/iam_hungry/presentation/screens/menu_screen.dart';

class MenuTabBarController extends GetxController
    with SingleGetTickerProviderMixin, StateMixin<List<CategoryModel>> {
  final MenuUseCase menuUseCase;

  MenuTabBarController({required this.menuUseCase}); // @override

  var _currentIndex = 0.obs;
  late TabController _controller;
  late VoidCallback onChanged;
  var _selectedPage = 0.obs;
  late CategoriesModel _categoriesModel;

  get getCurrentIndex => _currentIndex;

  TabController get getTabController => _controller;

  CategoriesModel get getCategoriesModel => _categoriesModel;

  set setSelectedPage(int selectedPage) => _selectedPage.value = selectedPage;

  @override
  void onInit() async {
    await getMenu();
    super.onInit();
  }

  Future<void> getMenu() async {
    print('hello tabBarController');
    change(null, status: RxStatus.loading());
    _categoriesModel = await menuUseCase(params: NoParams());
    _controller = new TabController(
      initialIndex: 0,
      length: _categoriesModel.categories.length,
      vsync: this,
    );
    onChanged = () => _currentIndex.value = this._controller.index;
    _controller.addListener(onChanged);
    change(_categoriesModel.categories, status: RxStatus.success());
  }

  List<Widget> menuScreenTabBarView() {
    return <Widget>[
      for (int i = 0; i < getCategoriesModel.categories.length; i++)
        MenuScreen(
          tabBarIndex: i,
          isIamHungry:
              i != getCategoriesModel.categories.length - 1 ? true : false,
        ),
    ];
  }

  @override
  void dispose() {
    _controller.removeListener(onChanged);
    _controller.dispose();
    super.dispose();
  }
}
