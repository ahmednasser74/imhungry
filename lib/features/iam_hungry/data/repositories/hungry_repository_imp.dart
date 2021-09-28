import 'package:iam_hungry2/features/iam_hungry/data/datasources/hungry_remote_data_source.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/category/categories/categories_model.dart';
import 'package:iam_hungry2/features/iam_hungry/domin/repositories/hungry_repository.dart';

class HungryRepositoryImp implements HungryRepository {
  final HungryRemoteDataSource hungryRemoteDataSource;

  HungryRepositoryImp({required this.hungryRemoteDataSource});

  @override
  Future<CategoriesModel> getMenu() async {
    return await hungryRemoteDataSource.getMenu();
  }
}
