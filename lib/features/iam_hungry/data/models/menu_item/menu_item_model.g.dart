// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MenuModel _$_$_MenuModelFromJson(Map<String, dynamic> json) {
  return _$_MenuModel(
    id: json['id'] as int,
    price: (json['price'] as num).toDouble(),
    calories: json['calories'] as int,
    image: json['image'] as String,
    active: json['active'] as int,
    name: json['name'] as String,
    description: json['description'] as String,
    addOnList: (json['addons'] as List<dynamic>)
        .map((e) => AddonModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    withOutList: (json['without'] as List<dynamic>)
        .map((e) => WithoutModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    quantity: json['quantity'] as int? ?? 1,
    totalAdds: (json['totalAdds'] as num?)?.toDouble() ?? 0,
    totalPrice: (json['totalPrice'] as num?)?.toDouble() ?? 0,
  );
}

Map<String, dynamic> _$_$_MenuModelToJson(_$_MenuModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'calories': instance.calories,
      'image': instance.image,
      'active': instance.active,
      'name': instance.name,
      'description': instance.description,
      'addons': instance.addOnList,
      'without': instance.withOutList,
      'quantity': instance.quantity,
      'totalAdds': instance.totalAdds,
      'totalPrice': instance.totalPrice,
    };
