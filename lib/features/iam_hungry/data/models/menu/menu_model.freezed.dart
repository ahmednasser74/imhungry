// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MenuModel _$MenuModelFromJson(Map<String, dynamic> json) {
  return _MenuModel.fromJson(json);
}

/// @nodoc
class _$MenuModelTearOff {
  const _$MenuModelTearOff();

  _MenuModel call(
      {@JsonKey(name: 'id')
          int id = 0,
      @JsonKey(name: 'image')
          String image = '',
      @JsonKey(name: 'title')
          String title = '',
      @JsonKey(name: 'description')
          String description = '',
      @JsonKey(name: 'calories')
          int calories = 0,
      @JsonKey(name: 'price')
          double price = 0.0,
      @JsonKey(name: 'addOnList')
          List<AddonModel> addOnList = const [],
      @JsonKey(name: 'withOutList')
          List<WithoutModel> withOutList = const []}) {
    return _MenuModel(
      id: id,
      image: image,
      title: title,
      description: description,
      calories: calories,
      price: price,
      addOnList: addOnList,
      withOutList: withOutList,
    );
  }

  MenuModel fromJson(Map<String, Object> json) {
    return MenuModel.fromJson(json);
  }
}

/// @nodoc
const $MenuModel = _$MenuModelTearOff();

/// @nodoc
mixin _$MenuModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'calories')
  int get calories => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'addOnList')
  List<AddonModel> get addOnList => throw _privateConstructorUsedError;
  @JsonKey(name: 'withOutList')
  List<WithoutModel> get withOutList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuModelCopyWith<MenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuModelCopyWith<$Res> {
  factory $MenuModelCopyWith(MenuModel value, $Res Function(MenuModel) then) =
      _$MenuModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'calories') int calories,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'addOnList') List<AddonModel> addOnList,
      @JsonKey(name: 'withOutList') List<WithoutModel> withOutList});
}

/// @nodoc
class _$MenuModelCopyWithImpl<$Res> implements $MenuModelCopyWith<$Res> {
  _$MenuModelCopyWithImpl(this._value, this._then);

  final MenuModel _value;
  // ignore: unused_field
  final $Res Function(MenuModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? calories = freezed,
    Object? price = freezed,
    Object? addOnList = freezed,
    Object? withOutList = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      calories: calories == freezed
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      addOnList: addOnList == freezed
          ? _value.addOnList
          : addOnList // ignore: cast_nullable_to_non_nullable
              as List<AddonModel>,
      withOutList: withOutList == freezed
          ? _value.withOutList
          : withOutList // ignore: cast_nullable_to_non_nullable
              as List<WithoutModel>,
    ));
  }
}

/// @nodoc
abstract class _$MenuModelCopyWith<$Res> implements $MenuModelCopyWith<$Res> {
  factory _$MenuModelCopyWith(
          _MenuModel value, $Res Function(_MenuModel) then) =
      __$MenuModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'calories') int calories,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'addOnList') List<AddonModel> addOnList,
      @JsonKey(name: 'withOutList') List<WithoutModel> withOutList});
}

/// @nodoc
class __$MenuModelCopyWithImpl<$Res> extends _$MenuModelCopyWithImpl<$Res>
    implements _$MenuModelCopyWith<$Res> {
  __$MenuModelCopyWithImpl(_MenuModel _value, $Res Function(_MenuModel) _then)
      : super(_value, (v) => _then(v as _MenuModel));

  @override
  _MenuModel get _value => super._value as _MenuModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? calories = freezed,
    Object? price = freezed,
    Object? addOnList = freezed,
    Object? withOutList = freezed,
  }) {
    return _then(_MenuModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      calories: calories == freezed
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      addOnList: addOnList == freezed
          ? _value.addOnList
          : addOnList // ignore: cast_nullable_to_non_nullable
              as List<AddonModel>,
      withOutList: withOutList == freezed
          ? _value.withOutList
          : withOutList // ignore: cast_nullable_to_non_nullable
              as List<WithoutModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MenuModel implements _MenuModel {
  const _$_MenuModel(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'image') this.image = '',
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'description') this.description = '',
      @JsonKey(name: 'calories') this.calories = 0,
      @JsonKey(name: 'price') this.price = 0.0,
      @JsonKey(name: 'addOnList') this.addOnList = const [],
      @JsonKey(name: 'withOutList') this.withOutList = const []});

  factory _$_MenuModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MenuModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'image')
  final String image;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'calories')
  final int calories;
  @override
  @JsonKey(name: 'price')
  final double price;
  @override
  @JsonKey(name: 'addOnList')
  final List<AddonModel> addOnList;
  @override
  @JsonKey(name: 'withOutList')
  final List<WithoutModel> withOutList;

  @override
  String toString() {
    return 'MenuModel(id: $id, image: $image, title: $title, description: $description, calories: $calories, price: $price, addOnList: $addOnList, withOutList: $withOutList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MenuModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.calories, calories) ||
                const DeepCollectionEquality()
                    .equals(other.calories, calories)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.addOnList, addOnList) ||
                const DeepCollectionEquality()
                    .equals(other.addOnList, addOnList)) &&
            (identical(other.withOutList, withOutList) ||
                const DeepCollectionEquality()
                    .equals(other.withOutList, withOutList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(calories) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(addOnList) ^
      const DeepCollectionEquality().hash(withOutList);

  @JsonKey(ignore: true)
  @override
  _$MenuModelCopyWith<_MenuModel> get copyWith =>
      __$MenuModelCopyWithImpl<_MenuModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MenuModelToJson(this);
  }
}

abstract class _MenuModel implements MenuModel {
  const factory _MenuModel(
          {@JsonKey(name: 'id') int id,
          @JsonKey(name: 'image') String image,
          @JsonKey(name: 'title') String title,
          @JsonKey(name: 'description') String description,
          @JsonKey(name: 'calories') int calories,
          @JsonKey(name: 'price') double price,
          @JsonKey(name: 'addOnList') List<AddonModel> addOnList,
          @JsonKey(name: 'withOutList') List<WithoutModel> withOutList}) =
      _$_MenuModel;

  factory _MenuModel.fromJson(Map<String, dynamic> json) =
      _$_MenuModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'calories')
  int get calories => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'price')
  double get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'addOnList')
  List<AddonModel> get addOnList => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'withOutList')
  List<WithoutModel> get withOutList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MenuModelCopyWith<_MenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}
