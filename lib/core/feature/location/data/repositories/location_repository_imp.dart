import 'package:iam_hungry2/core/feature/location/data/datasources/location_remote_data_source.dart';
import 'package:iam_hungry2/core/feature/location/data/models/location/locations_model.dart';
import 'package:iam_hungry2/core/feature/location/domin/repositories/location_repository.dart';

class LocationRepositoryImp implements LocationRepository {
  final LocationRemoteDataSource locationRemoteDataSource;

  LocationRepositoryImp({required this.locationRemoteDataSource});

  @override
  Future<LocationsModel> getLocations() async {
    return await locationRemoteDataSource.getLocations();
  }
}
