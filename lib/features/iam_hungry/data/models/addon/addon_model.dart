import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'addon_model.freezed.dart';

part 'addon_model.g.dart';

@freezed
class AddonModel with _$AddonModel {
  const factory AddonModel({
    int? id,
    @Default('') String title,
    @Default(0) int price,
  }) = _AddonModel;

  factory AddonModel.fromJson(Map<String, dynamic> json) =>
      _$AddonModelFromJson(json);
}
