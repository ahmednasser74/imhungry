import 'package:iam_hungry2/core/usecases/usecase.dart';
import 'package:iam_hungry2/features/cart/domin/repositories/cart_repository.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/category/category_model.dart';

class BeforeCheckoutUseCase extends UseCase<Future<CategoryModel>, NoParams> {
  final CartRepository cartRepository;

  BeforeCheckoutUseCase({required this.cartRepository});

  @override
  Future<CategoryModel> call({required NoParams params}) async {
    return await cartRepository.getBeforeCheckout();
  }
}
