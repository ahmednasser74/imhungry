import 'package:iam_hungry2/core/usecases/usecase.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/menu/menus_model.dart';
import 'package:iam_hungry2/features/iam_hungry/domin/repositories/hungry_repository.dart';

class MenuUseCase extends UseCase<Future<MenusModel>, NoParams> {
  final HungryRepository hungryRepository;

  MenuUseCase({required this.hungryRepository});

  @override
  Future<MenusModel> call({required NoParams params}) async {
    return await hungryRepository.getMenu();
  }
}
