// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'addon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddonModel _$AddonModelFromJson(Map<String, dynamic> json) {
  return _AddonModel.fromJson(json);
}

/// @nodoc
class _$AddonModelTearOff {
  const _$AddonModelTearOff();

  _AddonModel call(
      {@JsonKey(name: 'id') int id = 0,
      @JsonKey(name: 'name') String name = '',
      @JsonKey(name: 'price') int price = 0,
      @JsonKey(name: "active") int active = 0}) {
    return _AddonModel(
      id: id,
      name: name,
      price: price,
      active: active,
    );
  }

  AddonModel fromJson(Map<String, Object> json) {
    return AddonModel.fromJson(json);
  }
}

/// @nodoc
const $AddonModel = _$AddonModelTearOff();

/// @nodoc
mixin _$AddonModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: "active")
  int get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddonModelCopyWith<AddonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddonModelCopyWith<$Res> {
  factory $AddonModelCopyWith(
          AddonModel value, $Res Function(AddonModel) then) =
      _$AddonModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'price') int price,
      @JsonKey(name: "active") int active});
}

/// @nodoc
class _$AddonModelCopyWithImpl<$Res> implements $AddonModelCopyWith<$Res> {
  _$AddonModelCopyWithImpl(this._value, this._then);

  final AddonModel _value;
  // ignore: unused_field
  final $Res Function(AddonModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AddonModelCopyWith<$Res> implements $AddonModelCopyWith<$Res> {
  factory _$AddonModelCopyWith(
          _AddonModel value, $Res Function(_AddonModel) then) =
      __$AddonModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'price') int price,
      @JsonKey(name: "active") int active});
}

/// @nodoc
class __$AddonModelCopyWithImpl<$Res> extends _$AddonModelCopyWithImpl<$Res>
    implements _$AddonModelCopyWith<$Res> {
  __$AddonModelCopyWithImpl(
      _AddonModel _value, $Res Function(_AddonModel) _then)
      : super(_value, (v) => _then(v as _AddonModel));

  @override
  _AddonModel get _value => super._value as _AddonModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? active = freezed,
  }) {
    return _then(_AddonModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddonModel with DiagnosticableTreeMixin implements _AddonModel {
  const _$_AddonModel(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'price') this.price = 0,
      @JsonKey(name: "active") this.active = 0});

  factory _$_AddonModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AddonModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'price')
  final int price;
  @override
  @JsonKey(name: "active")
  final int active;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddonModel(id: $id, name: $name, price: $price, active: $active)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddonModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('active', active));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddonModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(active);

  @JsonKey(ignore: true)
  @override
  _$AddonModelCopyWith<_AddonModel> get copyWith =>
      __$AddonModelCopyWithImpl<_AddonModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddonModelToJson(this);
  }
}

abstract class _AddonModel implements AddonModel {
  const factory _AddonModel(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'price') int price,
      @JsonKey(name: "active") int active}) = _$_AddonModel;

  factory _AddonModel.fromJson(Map<String, dynamic> json) =
      _$_AddonModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'price')
  int get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "active")
  int get active => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddonModelCopyWith<_AddonModel> get copyWith =>
      throw _privateConstructorUsedError;
}
