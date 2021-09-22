// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiscountModel _$_$_DiscountModelFromJson(Map<String, dynamic> json) {
  return _$_DiscountModel(
    id: json['id'] as int,
    title: json['title'] as String,
    discount: json['discount'] as int,
    image: json['image'] as String,
    date: json['date'] as String,
  );
}

Map<String, dynamic> _$_$_DiscountModelToJson(_$_DiscountModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'discount': instance.discount,
      'image': instance.image,
      'date': instance.date,
    };
