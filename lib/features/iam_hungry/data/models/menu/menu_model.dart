import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/addon/addon_model.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/without/without_model.dart';

part 'menu_model.freezed.dart';

part 'menu_model.g.dart';

@freezed
class MenuModel with _$MenuModel {
  const factory MenuModel({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default('') @JsonKey(name: 'image') String image,
    @Default('') @JsonKey(name: 'title') String title,
    @Default('') @JsonKey(name: 'description') String description,
    @Default(0) @JsonKey(name: 'calories') int calories,
    @Default(0.0) @JsonKey(name: 'price') double price,
    @Default([]) @JsonKey(name: 'addOnList') List<AddonModel> addOnList,
    @Default([]) @JsonKey(name: 'withOutList') List<WithoutModel> withOutList,
  }) = _MenuModel;

  factory MenuModel.fromJson(Map<String, dynamic> json) =>
      _$MenuModelFromJson(json);
}
