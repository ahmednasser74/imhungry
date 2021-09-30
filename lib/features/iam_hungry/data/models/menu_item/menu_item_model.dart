import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/addon/addon_model.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/without/without_model.dart';

part 'menu_item_model.freezed.dart';

part 'menu_item_model.g.dart';

@freezed
class MenuItemModel with _$MenuItemModel {

  const factory MenuItemModel({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default(0.0) @JsonKey(name: 'price') double price,
    @Default(0) @JsonKey(name: 'calories') int calories,
    @Default('') @JsonKey(name: 'image') String image,
    @Default(0) @JsonKey(name: 'active') int active,
    @Default('') @JsonKey(name: 'name') String name,
    @Default('') @JsonKey(name: 'description') String description,
    @Default([]) @JsonKey(name: 'addons') List<AddonModel> addOnList,
    @Default([]) @JsonKey(name: 'without') List<WithoutModel> withOutList,
    @Default(1) int quantity,
    @Default(0) double totalAdds,
    @Default(0) double totalPrice,
  }) = _MenuModel;

  factory MenuItemModel.fromJson(Map<String, dynamic> json) =>
      _$MenuItemModelFromJson(json);
}