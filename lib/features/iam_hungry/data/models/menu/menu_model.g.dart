// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MenuModel _$_$_MenuModelFromJson(Map<String, dynamic> json) {
  return _$_MenuModel(
    id: json['id'] as int,
    image: json['image'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    calories: json['calories'] as int,
    price: (json['price'] as num).toDouble(),
    addOnList: (json['addons'] as List<dynamic>)
        .map((e) => AddonModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    withOutList: (json['without'] as List<dynamic>)
        .map((e) => WithoutModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_MenuModelToJson(_$_MenuModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'description': instance.description,
      'calories': instance.calories,
      'price': instance.price,
      'addons': instance.addOnList,
      'without': instance.withOutList,
    };
