import 'package:iam_hungry2/features/cart/data/datasources/cart_remote_data_source.dart';
import 'package:iam_hungry2/features/cart/domin/repositories/cart_repository.dart';

class CartRepositoryImp implements CartRepository{
  final CartRemoteDataSource cartRemoteDataSource;

  CartRepositoryImp({required this.cartRemoteDataSource});

  @override
  Future<void> getBeforeCheckout() async{
    return await cartRemoteDataSource.getBeforeCheckout();
  }

}
