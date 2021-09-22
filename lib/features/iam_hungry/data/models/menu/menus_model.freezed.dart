// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'menus_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MenusModel _$MenusModelFromJson(Map<String, dynamic> json) {
  return _MenusModel.fromJson(json);
}

/// @nodoc
class _$MenusModelTearOff {
  const _$MenusModelTearOff();

  _MenusModel call(
      {@JsonKey(name: 'id') int id = 0,
      @JsonKey(name: 'menuList') List<MenuModel> menuList = const []}) {
    return _MenusModel(
      id: id,
      menuList: menuList,
    );
  }

  MenusModel fromJson(Map<String, Object> json) {
    return MenusModel.fromJson(json);
  }
}

/// @nodoc
const $MenusModel = _$MenusModelTearOff();

/// @nodoc
mixin _$MenusModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'menuList')
  List<MenuModel> get menuList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenusModelCopyWith<MenusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenusModelCopyWith<$Res> {
  factory $MenusModelCopyWith(
          MenusModel value, $Res Function(MenusModel) then) =
      _$MenusModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'menuList') List<MenuModel> menuList});
}

/// @nodoc
class _$MenusModelCopyWithImpl<$Res> implements $MenusModelCopyWith<$Res> {
  _$MenusModelCopyWithImpl(this._value, this._then);

  final MenusModel _value;
  // ignore: unused_field
  final $Res Function(MenusModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? menuList = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      menuList: menuList == freezed
          ? _value.menuList
          : menuList // ignore: cast_nullable_to_non_nullable
              as List<MenuModel>,
    ));
  }
}

/// @nodoc
abstract class _$MenusModelCopyWith<$Res> implements $MenusModelCopyWith<$Res> {
  factory _$MenusModelCopyWith(
          _MenusModel value, $Res Function(_MenusModel) then) =
      __$MenusModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'menuList') List<MenuModel> menuList});
}

/// @nodoc
class __$MenusModelCopyWithImpl<$Res> extends _$MenusModelCopyWithImpl<$Res>
    implements _$MenusModelCopyWith<$Res> {
  __$MenusModelCopyWithImpl(
      _MenusModel _value, $Res Function(_MenusModel) _then)
      : super(_value, (v) => _then(v as _MenusModel));

  @override
  _MenusModel get _value => super._value as _MenusModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? menuList = freezed,
  }) {
    return _then(_MenusModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      menuList: menuList == freezed
          ? _value.menuList
          : menuList // ignore: cast_nullable_to_non_nullable
              as List<MenuModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MenusModel implements _MenusModel {
  const _$_MenusModel(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'menuList') this.menuList = const []});

  factory _$_MenusModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MenusModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'menuList')
  final List<MenuModel> menuList;

  @override
  String toString() {
    return 'MenusModel(id: $id, menuList: $menuList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MenusModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.menuList, menuList) ||
                const DeepCollectionEquality()
                    .equals(other.menuList, menuList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(menuList);

  @JsonKey(ignore: true)
  @override
  _$MenusModelCopyWith<_MenusModel> get copyWith =>
      __$MenusModelCopyWithImpl<_MenusModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MenusModelToJson(this);
  }
}

abstract class _MenusModel implements MenusModel {
  const factory _MenusModel(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'menuList') List<MenuModel> menuList}) = _$_MenusModel;

  factory _MenusModel.fromJson(Map<String, dynamic> json) =
      _$_MenusModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'menuList')
  List<MenuModel> get menuList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MenusModelCopyWith<_MenusModel> get copyWith =>
      throw _privateConstructorUsedError;
}
