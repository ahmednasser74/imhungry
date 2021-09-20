import 'package:iam_hungry2/features/iam_hungry/data/datasources/hungry_remote_data_source.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/menu/menus_model.dart';
import 'package:iam_hungry2/features/iam_hungry/domin/repositories/hungry_repository.dart';

class HungryRepositoryImp implements HungryRepository {
  final HungryRemoteDataSource hungryRemoteDataSource;

  HungryRepositoryImp({required this.hungryRemoteDataSource});

  @override
  Future<MenusModel> getMenu() async => await hungryRemoteDataSource.getMenu();

}
