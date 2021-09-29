import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/category/category_model.dart';

part 'categories_model.freezed.dart';

part 'categories_model.g.dart';

@freezed
class CategoriesModel with _$CategoriesModel {
  const factory CategoriesModel({required List<CategoryModel> categories}) =
      _CategoriesModel;

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesModelFromJson(json);
}
