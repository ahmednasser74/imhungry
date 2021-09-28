
import 'location_model.dart';

class LocationsModel {
  late List<LocationModel> locationsList;

  LocationsModel({required this.locationsList});

  factory LocationsModel.fromJson(Map<String, dynamic> jsonData) {
    return LocationsModel(
      locationsList: jsonData['location_list'],
    );
  }
}
