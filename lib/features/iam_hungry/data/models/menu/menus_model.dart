import 'package:freezed_annotation/freezed_annotation.dart';
import 'menu_model.dart';

part 'menus_model.freezed.dart';

part 'menus_model.g.dart';

@freezed
class MenusModel with _$MenusModel {
  const factory MenusModel({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default([]) @JsonKey(name: 'menuList') List<MenuModel> menuList,
  }) = _MenusModel;

  factory MenusModel.fromJson(Map<String, dynamic> json) =>
      _$MenusModelFromJson(json);
}
