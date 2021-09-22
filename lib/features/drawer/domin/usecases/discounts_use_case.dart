import 'package:iam_hungry2/core/usecases/usecase.dart';
import 'package:iam_hungry2/features/drawer/data/models/discount/discounts_model.dart';
import 'package:iam_hungry2/features/drawer/domin/repositories/drawer_repository.dart';

class DiscountUseCase extends UseCase<Future<DiscountsModel>, NoParams> {
  DrawerRepository drawerRepository;

  DiscountUseCase({required this.drawerRepository});

  @override
  Future<DiscountsModel> call({required NoParams params}) async {
    return await drawerRepository.getDiscounts();
  }
}
