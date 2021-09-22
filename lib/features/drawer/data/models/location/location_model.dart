import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';

part 'location_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default('') @JsonKey(name: 'title') String title,
    @Default('') @JsonKey(name: 'street') String street,
    @Default('') @JsonKey(name: 'building') String building,
    @Default('') @JsonKey(name: 'apartment') String apartment,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}
