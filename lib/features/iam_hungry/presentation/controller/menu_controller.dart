import 'package:get/get.dart';
import 'package:iam_hungry2/core/usecases/usecase.dart';
import 'package:iam_hungry2/features/iam_hungry/domin/usecases/menu_use_case.dart';

class MenuController extends GetxController {
  final MenuUseCase menuUseCase;

  MenuController({required this.menuUseCase});

  Future<void> getMenu() async {
    final menus = await menuUseCase(params: NoParams());
    menus.menuList.forEach((element) {
      print('desc = ${element.description}');
    });
  }
}
