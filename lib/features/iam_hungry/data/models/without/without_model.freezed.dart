// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'without_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WithoutModel _$WithoutModelFromJson(Map<String, dynamic> json) {
  return _WithoutModel.fromJson(json);
}

/// @nodoc
class _$WithoutModelTearOff {
  const _$WithoutModelTearOff();

  _WithoutModel call(
      {@JsonKey(name: 'id') int id = 0,
      @JsonKey(name: "active") int active = 0,
      @JsonKey(name: 'name') String name = ''}) {
    return _WithoutModel(
      id: id,
      active: active,
      name: name,
    );
  }

  WithoutModel fromJson(Map<String, Object> json) {
    return WithoutModel.fromJson(json);
  }
}

/// @nodoc
const $WithoutModel = _$WithoutModelTearOff();

/// @nodoc
mixin _$WithoutModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "active")
  int get active => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WithoutModelCopyWith<WithoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithoutModelCopyWith<$Res> {
  factory $WithoutModelCopyWith(
          WithoutModel value, $Res Function(WithoutModel) then) =
      _$WithoutModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: "active") int active,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$WithoutModelCopyWithImpl<$Res> implements $WithoutModelCopyWith<$Res> {
  _$WithoutModelCopyWithImpl(this._value, this._then);

  final WithoutModel _value;
  // ignore: unused_field
  final $Res Function(WithoutModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? active = freezed,
    Object? name = freezed,
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
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WithoutModelCopyWith<$Res>
    implements $WithoutModelCopyWith<$Res> {
  factory _$WithoutModelCopyWith(
          _WithoutModel value, $Res Function(_WithoutModel) then) =
      __$WithoutModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: "active") int active,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$WithoutModelCopyWithImpl<$Res> extends _$WithoutModelCopyWithImpl<$Res>
    implements _$WithoutModelCopyWith<$Res> {
  __$WithoutModelCopyWithImpl(
      _WithoutModel _value, $Res Function(_WithoutModel) _then)
      : super(_value, (v) => _then(v as _WithoutModel));

  @override
  _WithoutModel get _value => super._value as _WithoutModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? active = freezed,
    Object? name = freezed,
  }) {
    return _then(_WithoutModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WithoutModel implements _WithoutModel {
  const _$_WithoutModel(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: "active") this.active = 0,
      @JsonKey(name: 'name') this.name = ''});

  factory _$_WithoutModel.fromJson(Map<String, dynamic> json) =>
      _$_$_WithoutModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: "active")
  final int active;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'WithoutModel(id: $id, active: $active, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WithoutModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$WithoutModelCopyWith<_WithoutModel> get copyWith =>
      __$WithoutModelCopyWithImpl<_WithoutModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WithoutModelToJson(this);
  }
}

abstract class _WithoutModel implements WithoutModel {
  const factory _WithoutModel(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: "active") int active,
      @JsonKey(name: 'name') String name}) = _$_WithoutModel;

  factory _WithoutModel.fromJson(Map<String, dynamic> json) =
      _$_WithoutModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "active")
  int get active => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WithoutModelCopyWith<_WithoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}
