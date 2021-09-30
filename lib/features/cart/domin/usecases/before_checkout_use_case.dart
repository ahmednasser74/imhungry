import 'package:iam_hungry2/core/usecases/usecase.dart';
import 'package:iam_hungry2/features/cart/domin/repositories/cart_repository.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/category/categories/categories_model.dart';
import 'package:iam_hungry2/features/iam_hungry/domin/repositories/hungry_repository.dart';

class BeforeCheckoutUseCase extends UseCase<Future<void>, NoParams> {
  final CartRepository cartRepository;

  BeforeCheckoutUseCase({required this.cartRepository});

  @override
  Future<void> call({required NoParams params}) async {
    return await cartRepository.getBeforeCheckout();
  }
}
