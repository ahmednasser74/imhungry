import 'package:freezed_annotation/freezed_annotation.dart';

part 'without_model.freezed.dart';

part 'without_model.g.dart';

@freezed
class WithoutModel with _$WithoutModel {
  const factory WithoutModel({
    @Default(0) @JsonKey(name:'id') int id,
    @Default(0) @JsonKey(name: "active") int active,
    @Default('') @JsonKey(name:'name')String name,
  }) = _WithoutModel;

  factory WithoutModel.fromJson(Map<String, dynamic> json) =>
      _$WithoutModelFromJson(json);
}
