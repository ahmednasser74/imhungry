import 'package:iam_hungry2/core/feature/location/data/models/location/locations_model.dart';
import 'package:iam_hungry2/core/feature/location/domin/repositories/location_repository.dart';
import 'package:iam_hungry2/core/usecases/usecase.dart';

class LocationsUseCase extends UseCase<Future<LocationsModel>, NoParams> {
  LocationRepository locationRepository;

  LocationsUseCase({required this.locationRepository});

  @override
  Future<LocationsModel> call({required NoParams params}) async {
    return await locationRepository.getLocations();
  }
}
