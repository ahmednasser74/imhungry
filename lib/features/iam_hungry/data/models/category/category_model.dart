import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/menu/menu_model.dart';

part 'category_model.freezed.dart';

part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default(0) @JsonKey(name: 'active') int active,
    @Default('') @JsonKey(name: 'name') String categoryName,
    @Default([]) @JsonKey(name: 'items') List<MenuModel> menuList,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
