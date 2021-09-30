import 'package:iam_hungry2/features/cart/data/datasources/cart_remote_data_source.dart';
import 'package:iam_hungry2/features/cart/domin/repositories/cart_repository.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/category/category_model.dart';

class CartRepositoryImp implements CartRepository {
  final CartRemoteDataSource cartRemoteDataSource;

  CartRepositoryImp({required this.cartRemoteDataSource});

  @override
  Future<CategoryModel> getBeforeCheckout() async {
    return await cartRemoteDataSource.getBeforeCheckout();
  }
}
