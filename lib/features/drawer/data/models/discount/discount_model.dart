import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_model.freezed.dart';

part 'discount_model.g.dart';

@freezed
class DiscountModel with _$DiscountModel {
  const factory DiscountModel({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default('') @JsonKey(name: 'title') String title,
    @Default(0) @JsonKey(name: 'discount') int discount,
    @Default('') @JsonKey(name: 'image') String image,
    @Default('') @JsonKey(name: 'date') String date,
  }) = _DiscountModel;

  factory DiscountModel.fromJson(Map<String, dynamic> json) =>
      _$DiscountModelFromJson(json);
}
