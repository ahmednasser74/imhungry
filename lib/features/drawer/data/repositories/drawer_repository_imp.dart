import 'package:iam_hungry2/features/drawer/data/datasources/drawer_remote_data_source.dart';
import 'package:iam_hungry2/features/drawer/data/models/discount/discounts_model.dart';
import 'package:iam_hungry2/features/drawer/domin/repositories/drawer_repository.dart';

class DrawerRepositoryImp implements DrawerRepository {
  final DrawerRemoteDataSource drawerRemoteDataSource;

  DrawerRepositoryImp({required this.drawerRemoteDataSource});

  @override
  Future<DiscountsModel> getDiscounts() async {
    return await drawerRemoteDataSource.getDiscounts();
  }
}
