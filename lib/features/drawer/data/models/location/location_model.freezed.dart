// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
class _$LocationModelTearOff {
  const _$LocationModelTearOff();

  _LocationModel call(
      {@JsonKey(name: 'id') int id = 0,
      @JsonKey(name: 'title') String title = '',
      @JsonKey(name: 'street') String street = '',
      @JsonKey(name: 'building') String building = '',
      @JsonKey(name: 'apartment') String apartment = ''}) {
    return _LocationModel(
      id: id,
      title: title,
      street: street,
      building: building,
      apartment: apartment,
    );
  }

  LocationModel fromJson(Map<String, Object> json) {
    return LocationModel.fromJson(json);
  }
}

/// @nodoc
const $LocationModel = _$LocationModelTearOff();

/// @nodoc
mixin _$LocationModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'street')
  String get street => throw _privateConstructorUsedError;
  @JsonKey(name: 'building')
  String get building => throw _privateConstructorUsedError;
  @JsonKey(name: 'apartment')
  String get apartment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationModelCopyWith<LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
          LocationModel value, $Res Function(LocationModel) then) =
      _$LocationModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'street') String street,
      @JsonKey(name: 'building') String building,
      @JsonKey(name: 'apartment') String apartment});
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  final LocationModel _value;
  // ignore: unused_field
  final $Res Function(LocationModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? street = freezed,
    Object? building = freezed,
    Object? apartment = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      building: building == freezed
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LocationModelCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$LocationModelCopyWith(
          _LocationModel value, $Res Function(_LocationModel) then) =
      __$LocationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'street') String street,
      @JsonKey(name: 'building') String building,
      @JsonKey(name: 'apartment') String apartment});
}

/// @nodoc
class __$LocationModelCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res>
    implements _$LocationModelCopyWith<$Res> {
  __$LocationModelCopyWithImpl(
      _LocationModel _value, $Res Function(_LocationModel) _then)
      : super(_value, (v) => _then(v as _LocationModel));

  @override
  _LocationModel get _value => super._value as _LocationModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? street = freezed,
    Object? building = freezed,
    Object? apartment = freezed,
  }) {
    return _then(_LocationModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      building: building == freezed
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationModel implements _LocationModel {
  const _$_LocationModel(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'street') this.street = '',
      @JsonKey(name: 'building') this.building = '',
      @JsonKey(name: 'apartment') this.apartment = ''});

  factory _$_LocationModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LocationModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'street')
  final String street;
  @override
  @JsonKey(name: 'building')
  final String building;
  @override
  @JsonKey(name: 'apartment')
  final String apartment;

  @override
  String toString() {
    return 'LocationModel(id: $id, title: $title, street: $street, building: $building, apartment: $apartment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.building, building) ||
                const DeepCollectionEquality()
                    .equals(other.building, building)) &&
            (identical(other.apartment, apartment) ||
                const DeepCollectionEquality()
                    .equals(other.apartment, apartment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(building) ^
      const DeepCollectionEquality().hash(apartment);

  @JsonKey(ignore: true)
  @override
  _$LocationModelCopyWith<_LocationModel> get copyWith =>
      __$LocationModelCopyWithImpl<_LocationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocationModelToJson(this);
  }
}

abstract class _LocationModel implements LocationModel {
  const factory _LocationModel(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'street') String street,
      @JsonKey(name: 'building') String building,
      @JsonKey(name: 'apartment') String apartment}) = _$_LocationModel;

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$_LocationModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'street')
  String get street => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'building')
  String get building => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'apartment')
  String get apartment => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocationModelCopyWith<_LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
