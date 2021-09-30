// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryModel _$_$_CategoryModelFromJson(Map<String, dynamic> json) {
  return _$_CategoryModel(
    id: json['id'] as int,
    active: json['active'] as int,
    categoryName: json['name'] as String,
    menuList: (json['items'] as List<dynamic>)
        .map((e) => MenuItemModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_CategoryModelToJson(_$_CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'name': instance.categoryName,
      'items': instance.menuList,
    };
