// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartModel _$CartModelFromJson(Map<String, dynamic> json) {
  return _CartModel.fromJson(json);
}

/// @nodoc
class _$CartModelTearOff {
  const _$CartModelTearOff();

  _CartModel call(
      {double subTotal = 0,
      double tax = 0,
      double total = 0,
      List<MenuItemModel> items = const <MenuItemModel>[]}) {
    return _CartModel(
      subTotal: subTotal,
      tax: tax,
      total: total,
      items: items,
    );
  }

  CartModel fromJson(Map<String, Object> json) {
    return CartModel.fromJson(json);
  }
}

/// @nodoc
const $CartModel = _$CartModelTearOff();

/// @nodoc
mixin _$CartModel {
  double get subTotal => throw _privateConstructorUsedError;
  double get tax => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  List<MenuItemModel> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartModelCopyWith<CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) then) =
      _$CartModelCopyWithImpl<$Res>;
  $Res call(
      {double subTotal, double tax, double total, List<MenuItemModel> items});
}

/// @nodoc
class _$CartModelCopyWithImpl<$Res> implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._value, this._then);

  final CartModel _value;
  // ignore: unused_field
  final $Res Function(CartModel) _then;

  @override
  $Res call({
    Object? subTotal = freezed,
    Object? tax = freezed,
    Object? total = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      subTotal: subTotal == freezed
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double,
      tax: tax == freezed
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MenuItemModel>,
    ));
  }
}

/// @nodoc
abstract class _$CartModelCopyWith<$Res> implements $CartModelCopyWith<$Res> {
  factory _$CartModelCopyWith(
          _CartModel value, $Res Function(_CartModel) then) =
      __$CartModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {double subTotal, double tax, double total, List<MenuItemModel> items});
}

/// @nodoc
class __$CartModelCopyWithImpl<$Res> extends _$CartModelCopyWithImpl<$Res>
    implements _$CartModelCopyWith<$Res> {
  __$CartModelCopyWithImpl(_CartModel _value, $Res Function(_CartModel) _then)
      : super(_value, (v) => _then(v as _CartModel));

  @override
  _CartModel get _value => super._value as _CartModel;

  @override
  $Res call({
    Object? subTotal = freezed,
    Object? tax = freezed,
    Object? total = freezed,
    Object? items = freezed,
  }) {
    return _then(_CartModel(
      subTotal: subTotal == freezed
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double,
      tax: tax == freezed
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MenuItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartModel implements _CartModel {
  const _$_CartModel(
      {this.subTotal = 0,
      this.tax = 0,
      this.total = 0,
      this.items = const <MenuItemModel>[]});

  factory _$_CartModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CartModelFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final double subTotal;
  @JsonKey(defaultValue: 0)
  @override
  final double tax;
  @JsonKey(defaultValue: 0)
  @override
  final double total;
  @JsonKey(defaultValue: const <MenuItemModel>[])
  @override
  final List<MenuItemModel> items;

  @override
  String toString() {
    return 'CartModel(subTotal: $subTotal, tax: $tax, total: $total, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartModel &&
            (identical(other.subTotal, subTotal) ||
                const DeepCollectionEquality()
                    .equals(other.subTotal, subTotal)) &&
            (identical(other.tax, tax) ||
                const DeepCollectionEquality().equals(other.tax, tax)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subTotal) ^
      const DeepCollectionEquality().hash(tax) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$CartModelCopyWith<_CartModel> get copyWith =>
      __$CartModelCopyWithImpl<_CartModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CartModelToJson(this);
  }
}

abstract class _CartModel implements CartModel {
  const factory _CartModel(
      {double subTotal,
      double tax,
      double total,
      List<MenuItemModel> items}) = _$_CartModel;

  factory _CartModel.fromJson(Map<String, dynamic> json) =
      _$_CartModel.fromJson;

  @override
  double get subTotal => throw _privateConstructorUsedError;
  @override
  double get tax => throw _privateConstructorUsedError;
  @override
  double get total => throw _privateConstructorUsedError;
  @override
  List<MenuItemModel> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CartModelCopyWith<_CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}
