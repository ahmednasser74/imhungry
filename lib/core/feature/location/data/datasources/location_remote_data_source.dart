import 'dart:io';

import 'package:get/get.dart';
import 'package:iam_hungry2/core/feature/location/data/models/location/locations_model.dart';

abstract class LocationRemoteDataSource {
  Future<LocationsModel> getLocations();
}

class LocationRemoteDataSourceImp extends GetConnect
    implements LocationRemoteDataSource {
  @override
  Future<LocationsModel> getLocations() async {
    httpClient.baseUrl = 'https://api.themoviedb.org/3';
    final response = await httpClient.get(
      '/movie/popular?api_key=d08eecd863f06da75667bc6853553bb0',
    );
    if (response.statusCode == 200) {
      final json = response.body;
      print('json = ${response.body}');
      final data = LocationsModel.fromJson(json);
      return data;
    } else {
      print('statusCode = ${response.statusCode}');
      throw SocketException('Error Loading Locations');
    }
  }
}
