// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************
_$_CategoryModel _$_$_CategoryModelFromJson(Map<String, dynamic> json) {
  return _$_CategoryModel(
    id: json['id'] as int,
    categoryName: json['name'] as String? ?? '',
    active: json['active'] as int? ?? 0,
    // menuList: json['items'] as List<MenuModel>? ?? [],
    menuList: (json['items'] as List<dynamic>)
        .map((e) => MenuModel.fromJson(e as Map<String, dynamic>))
        .toList(),

  );
}
Map<String, dynamic> _$_$_CategoryModelToJson(_$_CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.categoryName,
      'active': instance.active,
      'items': instance.menuList,
    };
