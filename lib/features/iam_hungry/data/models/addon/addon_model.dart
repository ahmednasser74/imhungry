import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'addon_model.freezed.dart';

part 'addon_model.g.dart';

@freezed
class AddonModel with _$AddonModel {
  const factory AddonModel({
    @Default(0) @JsonKey(name:'id') int id,
    @Default('') @JsonKey(name:'name') String name,
    @Default(0) @JsonKey(name:'price') int price,
    @Default(0) @JsonKey(name: "active") int active,
  }) = _AddonModel;

  factory AddonModel.fromJson(Map<String, dynamic> json) =>
      _$AddonModelFromJson(json);
}
