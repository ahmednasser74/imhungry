import 'package:get/get.dart';
import 'package:iam_hungry2/core/usecases/usecase.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/category/category_model.dart';
import 'package:iam_hungry2/features/iam_hungry/domin/usecases/menu_use_case.dart';

// class MenuController extends GetxController with  StateMixin<List<>{
class MenuController extends GetxController
    with StateMixin<List<CategoryModel>> {
  MenuController({required this.menuUseCase});

  final MenuUseCase menuUseCase;

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
