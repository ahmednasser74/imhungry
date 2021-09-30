// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
class _$CategoryModelTearOff {
  const _$CategoryModelTearOff();

  _CategoryModel call(
      {@JsonKey(name: 'id') int id = 0,
      @JsonKey(name: 'active') int active = 0,
      @JsonKey(name: 'name') String categoryName = '',
      @JsonKey(name: 'items') List<MenuItemModel> menuList = const []}) {
    return _CategoryModel(
      id: id,
      active: active,
      categoryName: categoryName,
      menuList: menuList,
    );
  }

  CategoryModel fromJson(Map<String, Object> json) {
    return CategoryModel.fromJson(json);
  }
}

/// @nodoc
const $CategoryModel = _$CategoryModelTearOff();

/// @nodoc
mixin _$CategoryModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'active')
  int get active => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<MenuItemModel> get menuList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'active') int active,
      @JsonKey(name: 'name') String categoryName,
      @JsonKey(name: 'items') List<MenuItemModel> menuList});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  final CategoryModel _value;
  // ignore: unused_field
  final $Res Function(CategoryModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? active = freezed,
    Object? categoryName = freezed,
    Object? menuList = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      menuList: menuList == freezed
          ? _value.menuList
          : menuList // ignore: cast_nullable_to_non_nullable
              as List<MenuItemModel>,
    ));
  }
}

/// @nodoc
abstract class _$CategoryModelCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$CategoryModelCopyWith(
          _CategoryModel value, $Res Function(_CategoryModel) then) =
      __$CategoryModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'active') int active,
      @JsonKey(name: 'name') String categoryName,
      @JsonKey(name: 'items') List<MenuItemModel> menuList});
}

/// @nodoc
class __$CategoryModelCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res>
    implements _$CategoryModelCopyWith<$Res> {
  __$CategoryModelCopyWithImpl(
      _CategoryModel _value, $Res Function(_CategoryModel) _then)
      : super(_value, (v) => _then(v as _CategoryModel));

  @override
  _CategoryModel get _value => super._value as _CategoryModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? active = freezed,
    Object? categoryName = freezed,
    Object? menuList = freezed,
  }) {
    return _then(_CategoryModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      menuList: menuList == freezed
          ? _value.menuList
          : menuList // ignore: cast_nullable_to_non_nullable
              as List<MenuItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryModel implements _CategoryModel {
  const _$_CategoryModel(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'active') this.active = 0,
      @JsonKey(name: 'name') this.categoryName = '',
      @JsonKey(name: 'items') this.menuList = const []});

  factory _$_CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CategoryModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'active')
  final int active;
  @override
  @JsonKey(name: 'name')
  final String categoryName;
  @override
  @JsonKey(name: 'items')
  final List<MenuItemModel> menuList;

  @override
  String toString() {
    return 'CategoryModel(id: $id, active: $active, categoryName: $categoryName, menuList: $menuList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)) &&
            (identical(other.menuList, menuList) ||
                const DeepCollectionEquality()
                    .equals(other.menuList, menuList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(menuList);

  @JsonKey(ignore: true)
  @override
  _$CategoryModelCopyWith<_CategoryModel> get copyWith =>
      __$CategoryModelCopyWithImpl<_CategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CategoryModelToJson(this);
  }
}

abstract class _CategoryModel implements CategoryModel {
  const factory _CategoryModel(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'active') int active,
      @JsonKey(name: 'name') String categoryName,
      @JsonKey(name: 'items') List<MenuItemModel> menuList}) = _$_CategoryModel;

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'active')
  int get active => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String get categoryName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'items')
  List<MenuItemModel> get menuList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategoryModelCopyWith<_CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
