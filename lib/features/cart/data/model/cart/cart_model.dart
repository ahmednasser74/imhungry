import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/menu_item/menu_item_model.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class CartModel with _$CartModel {
  const factory CartModel({
    @Default(0) double subTotal,
    @Default(0) double tax,
    @Default(0) double total,
    @Default(<MenuItemModel>[]) List<MenuItemModel> items,
  }) = _CartModel;
  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
  // Map<String, dynamic> toJson() {
  //   final data = new Map<String, dynamic>();
  //   data['vendor_id'] = 3;
  //   data['user_id'] = 1;
  //   data['user_location_id'] = 1;
  //   return data;
  // }
}