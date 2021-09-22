// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationModel _$_$_LocationModelFromJson(Map<String, dynamic> json) {
  return _$_LocationModel(
    id: json['id'] as int,
    title: json['title'] as String,
    street: json['street'] as String,
    building: json['building'] as String,
    apartment: json['apartment'] as String,
  );
}

Map<String, dynamic> _$_$_LocationModelToJson(_$_LocationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'street': instance.street,
      'building': instance.building,
      'apartment': instance.apartment,
    };
