import 'package:iam_hungry2/core/usecases/usecase.dart';
import 'package:iam_hungry2/features/drawer/data/models/location/locations_model.dart';
import 'package:iam_hungry2/features/drawer/domin/repositories/drawer_repository.dart';

class LocationsUseCase extends UseCase<Future<LocationsModel>, NoParams> {
  DrawerRepository drawerRepository;

  LocationsUseCase({required this.drawerRepository});

  @override
  Future<LocationsModel> call({required NoParams params}) async {
    return await drawerRepository.getLocations();
  }
}
