// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menus_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MenusModel _$_$_MenusModelFromJson(Map<String, dynamic> json) {
  return _$_MenusModel(
    id: json['id'] as int,
    menuList: (json['menuList'] as List<dynamic>)
        .map((e) => MenuModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_MenusModelToJson(_$_MenusModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'menuList': instance.menuList,
    };
