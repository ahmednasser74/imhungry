import 'package:iam_hungry2/features/iam_hungry/data/models/menu/menus_model.dart';

abstract class HungryRepository {
  Future<MenusModel> getMenu();
}
