// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'menu_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MenuItemModel _$MenuItemModelFromJson(Map<String, dynamic> json) {
  return _MenuModel.fromJson(json);
}

/// @nodoc
class _$MenuItemModelTearOff {
  const _$MenuItemModelTearOff();

  _MenuModel call(
      {@JsonKey(name: 'id') int id = 0,
      @JsonKey(name: 'price') double price = 0.0,
      @JsonKey(name: 'calories') int calories = 0,
      @JsonKey(name: 'image') String image = '',
      @JsonKey(name: 'active') int active = 0,
      @JsonKey(name: 'name') String name = '',
      @JsonKey(name: 'description') String description = '',
      @JsonKey(name: 'addons') List<AddonModel> addOnList = const [],
      @JsonKey(name: 'without') List<WithoutModel> withOutList = const [],
      int quantity = 1,
      double totalAdds = 0,
      double totalPrice = 0}) {
    return _MenuModel(
      id: id,
      price: price,
      calories: calories,
      image: image,
      active: active,
      name: name,
      description: description,
      addOnList: addOnList,
      withOutList: withOutList,
      quantity: quantity,
      totalAdds: totalAdds,
      totalPrice: totalPrice,
    );
  }

  MenuItemModel fromJson(Map<String, Object> json) {
    return MenuItemModel.fromJson(json);
  }
}

/// @nodoc
const $MenuItemModel = _$MenuItemModelTearOff();

/// @nodoc
mixin _$MenuItemModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'calories')
  int get calories => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'active')
  int get active => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'addons')
  List<AddonModel> get addOnList => throw _privateConstructorUsedError;
  @JsonKey(name: 'without')
  List<WithoutModel> get withOutList => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get totalAdds => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuItemModelCopyWith<MenuItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuItemModelCopyWith<$Res> {
  factory $MenuItemModelCopyWith(
          MenuItemModel value, $Res Function(MenuItemModel) then) =
      _$MenuItemModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'calories') int calories,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'active') int active,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'addons') List<AddonModel> addOnList,
      @JsonKey(name: 'without') List<WithoutModel> withOutList,
      int quantity,
      double totalAdds,
      double totalPrice});
}

/// @nodoc
class _$MenuItemModelCopyWithImpl<$Res>
    implements $MenuItemModelCopyWith<$Res> {
  _$MenuItemModelCopyWithImpl(this._value, this._then);

  final MenuItemModel _value;
  // ignore: unused_field
  final $Res Function(MenuItemModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? calories = freezed,
    Object? image = freezed,
    Object? active = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? addOnList = freezed,
    Object? withOutList = freezed,
    Object? quantity = freezed,
    Object? totalAdds = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      calories: calories == freezed
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      addOnList: addOnList == freezed
          ? _value.addOnList
          : addOnList // ignore: cast_nullable_to_non_nullable
              as List<AddonModel>,
      withOutList: withOutList == freezed
          ? _value.withOutList
          : withOutList // ignore: cast_nullable_to_non_nullable
              as List<WithoutModel>,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalAdds: totalAdds == freezed
          ? _value.totalAdds
          : totalAdds // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$MenuModelCopyWith<$Res>
    implements $MenuItemModelCopyWith<$Res> {
  factory _$MenuModelCopyWith(
          _MenuModel value, $Res Function(_MenuModel) then) =
      __$MenuModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'calories') int calories,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'active') int active,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'addons') List<AddonModel> addOnList,
      @JsonKey(name: 'without') List<WithoutModel> withOutList,
      int quantity,
      double totalAdds,
      double totalPrice});
}

/// @nodoc
class __$MenuModelCopyWithImpl<$Res> extends _$MenuItemModelCopyWithImpl<$Res>
    implements _$MenuModelCopyWith<$Res> {
  __$MenuModelCopyWithImpl(_MenuModel _value, $Res Function(_MenuModel) _then)
      : super(_value, (v) => _then(v as _MenuModel));

  @override
  _MenuModel get _value => super._value as _MenuModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? calories = freezed,
    Object? image = freezed,
    Object? active = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? addOnList = freezed,
    Object? withOutList = freezed,
    Object? quantity = freezed,
    Object? totalAdds = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_MenuModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      calories: calories == freezed
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      addOnList: addOnList == freezed
          ? _value.addOnList
          : addOnList // ignore: cast_nullable_to_non_nullable
              as List<AddonModel>,
      withOutList: withOutList == freezed
          ? _value.withOutList
          : withOutList // ignore: cast_nullable_to_non_nullable
              as List<WithoutModel>,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalAdds: totalAdds == freezed
          ? _value.totalAdds
          : totalAdds // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MenuModel implements _MenuModel {
  const _$_MenuModel(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'price') this.price = 0.0,
      @JsonKey(name: 'calories') this.calories = 0,
      @JsonKey(name: 'image') this.image = '',
      @JsonKey(name: 'active') this.active = 0,
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'description') this.description = '',
      @JsonKey(name: 'addons') this.addOnList = const [],
      @JsonKey(name: 'without') this.withOutList = const [],
      this.quantity = 1,
      this.totalAdds = 0,
      this.totalPrice = 0});

  factory _$_MenuModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MenuModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'price')
  final double price;
  @override
  @JsonKey(name: 'calories')
  final int calories;
  @override
  @JsonKey(name: 'image')
  final String image;
  @override
  @JsonKey(name: 'active')
  final int active;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'addons')
  final List<AddonModel> addOnList;
  @override
  @JsonKey(name: 'without')
  final List<WithoutModel> withOutList;
  @JsonKey(defaultValue: 1)
  @override
  final int quantity;
  @JsonKey(defaultValue: 0)
  @override
  final double totalAdds;
  @JsonKey(defaultValue: 0)
  @override
  final double totalPrice;

  @override
  String toString() {
    return 'MenuItemModel(id: $id, price: $price, calories: $calories, image: $image, active: $active, name: $name, description: $description, addOnList: $addOnList, withOutList: $withOutList, quantity: $quantity, totalAdds: $totalAdds, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MenuModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.calories, calories) ||
                const DeepCollectionEquality()
                    .equals(other.calories, calories)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.addOnList, addOnList) ||
                const DeepCollectionEquality()
                    .equals(other.addOnList, addOnList)) &&
            (identical(other.withOutList, withOutList) ||
                const DeepCollectionEquality()
                    .equals(other.withOutList, withOutList)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.totalAdds, totalAdds) ||
                const DeepCollectionEquality()
                    .equals(other.totalAdds, totalAdds)) &&
            (identical(other.totalPrice, totalPrice) ||
                const DeepCollectionEquality()
                    .equals(other.totalPrice, totalPrice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(calories) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(addOnList) ^
      const DeepCollectionEquality().hash(withOutList) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(totalAdds) ^
      const DeepCollectionEquality().hash(totalPrice);

  @JsonKey(ignore: true)
  @override
  _$MenuModelCopyWith<_MenuModel> get copyWith =>
      __$MenuModelCopyWithImpl<_MenuModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MenuModelToJson(this);
  }
}

abstract class _MenuModel implements MenuItemModel {
  const factory _MenuModel(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'calories') int calories,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'active') int active,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'addons') List<AddonModel> addOnList,
      @JsonKey(name: 'without') List<WithoutModel> withOutList,
      int quantity,
      double totalAdds,
      double totalPrice}) = _$_MenuModel;

  factory _MenuModel.fromJson(Map<String, dynamic> json) =
      _$_MenuModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'price')
  double get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'calories')
  int get calories => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'active')
  int get active => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'addons')
  List<AddonModel> get addOnList => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'without')
  List<WithoutModel> get withOutList => throw _privateConstructorUsedError;
  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  double get totalAdds => throw _privateConstructorUsedError;
  @override
  double get totalPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MenuModelCopyWith<_MenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}
