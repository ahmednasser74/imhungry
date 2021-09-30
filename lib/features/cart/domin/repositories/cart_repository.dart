import 'package:iam_hungry2/features/iam_hungry/data/models/category/category_model.dart';

abstract class CartRepository {
  Future<CategoryModel> getBeforeCheckout();
}
