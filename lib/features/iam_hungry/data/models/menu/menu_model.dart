import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/addon/addon_model.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/without/without_model.dart';

part 'menu_model.freezed.dart';
part 'menu_model.g.dart';

@freezed
class MenuModel with _$MenuModel {
  const factory MenuModel(
      {int? id,
      @Default('') String image,
      @Default('') String title,
      @Default('') String description,
      @Default(0) int calories,
      @Default(0.0) double price,
      @Default([]) @JsonKey() List<AddonModel> addOnList,
      @Default([])  @JsonKey() List<WithoutModel> withOutList,
      }) = _MenuModel;

  factory MenuModel.fromJson(Map<String, dynamic> json) =>
      _$MenuModelFromJson(json);
}
