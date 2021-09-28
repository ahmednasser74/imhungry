import 'package:iam_hungry2/features/drawer/data/models/discount/discounts_model.dart';

abstract class DrawerRepository {
  Future<DiscountsModel> getDiscounts();
}
