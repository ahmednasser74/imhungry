
import 'package:iam_hungry2/features/iam_hungry/data/models/category/categories/categories_model.dart';

abstract class HungryRepository {
  Future<CategoriesModel> getMenu();
}
