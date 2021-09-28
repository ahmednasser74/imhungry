import 'package:iam_hungry2/core/feature/location/data/models/location/locations_model.dart';

abstract class LocationRepository {
  Future<LocationsModel> getLocations();
}
