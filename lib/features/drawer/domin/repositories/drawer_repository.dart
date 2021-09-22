import 'package:iam_hungry2/features/drawer/data/models/discount/discounts_model.dart';
import 'package:iam_hungry2/features/drawer/data/models/location/locations_model.dart';

abstract class DrawerRepository {
  Future<LocationsModel> getLocations();
  Future<DiscountsModel> getDiscounts();
}
