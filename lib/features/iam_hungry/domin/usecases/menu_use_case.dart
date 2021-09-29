import 'package:iam_hungry2/core/usecases/usecase.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/category/categories/categories_model.dart';
import 'package:iam_hungry2/features/iam_hungry/domin/repositories/hungry_repository.dart';

class MenuUseCase extends UseCase<Future<CategoriesModel>, NoParams> {
  final HungryRepository hungryRepository;

  MenuUseCase({required this.hungryRepository});

  @override
  Future<CategoriesModel> call({required NoParams params}) async {
    return await hungryRepository.getMenu();
  }
}
