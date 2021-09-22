// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'discount_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiscountModel _$DiscountModelFromJson(Map<String, dynamic> json) {
  return _DiscountModel.fromJson(json);
}

/// @nodoc
class _$DiscountModelTearOff {
  const _$DiscountModelTearOff();

  _DiscountModel call(
      {@JsonKey(name: 'id') int id = 0,
      @JsonKey(name: 'title') String title = '',
      @JsonKey(name: 'discount') int discount = 0,
      @JsonKey(name: 'image') String image = '',
      @JsonKey(name: 'date') String date = ''}) {
    return _DiscountModel(
      id: id,
      title: title,
      discount: discount,
      image: image,
      date: date,
    );
  }

  DiscountModel fromJson(Map<String, Object> json) {
    return DiscountModel.fromJson(json);
  }
}

/// @nodoc
const $DiscountModel = _$DiscountModelTearOff();

/// @nodoc
mixin _$DiscountModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount')
  int get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscountModelCopyWith<DiscountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountModelCopyWith<$Res> {
  factory $DiscountModelCopyWith(
          DiscountModel value, $Res Function(DiscountModel) then) =
      _$DiscountModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'discount') int discount,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'date') String date});
}

/// @nodoc
class _$DiscountModelCopyWithImpl<$Res>
    implements $DiscountModelCopyWith<$Res> {
  _$DiscountModelCopyWithImpl(this._value, this._then);

  final DiscountModel _value;
  // ignore: unused_field
  final $Res Function(DiscountModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? discount = freezed,
    Object? image = freezed,
    Object? date = freezed,
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
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DiscountModelCopyWith<$Res>
    implements $DiscountModelCopyWith<$Res> {
  factory _$DiscountModelCopyWith(
          _DiscountModel value, $Res Function(_DiscountModel) then) =
      __$DiscountModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'discount') int discount,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'date') String date});
}

/// @nodoc
class __$DiscountModelCopyWithImpl<$Res>
    extends _$DiscountModelCopyWithImpl<$Res>
    implements _$DiscountModelCopyWith<$Res> {
  __$DiscountModelCopyWithImpl(
      _DiscountModel _value, $Res Function(_DiscountModel) _then)
      : super(_value, (v) => _then(v as _DiscountModel));

  @override
  _DiscountModel get _value => super._value as _DiscountModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? discount = freezed,
    Object? image = freezed,
    Object? date = freezed,
  }) {
    return _then(_DiscountModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiscountModel implements _DiscountModel {
  const _$_DiscountModel(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'discount') this.discount = 0,
      @JsonKey(name: 'image') this.image = '',
      @JsonKey(name: 'date') this.date = ''});

  factory _$_DiscountModel.fromJson(Map<String, dynamic> json) =>
      _$_$_DiscountModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'discount')
  final int discount;
  @override
  @JsonKey(name: 'image')
  final String image;
  @override
  @JsonKey(name: 'date')
  final String date;

  @override
  String toString() {
    return 'DiscountModel(id: $id, title: $title, discount: $discount, image: $image, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiscountModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  _$DiscountModelCopyWith<_DiscountModel> get copyWith =>
      __$DiscountModelCopyWithImpl<_DiscountModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DiscountModelToJson(this);
  }
}

abstract class _DiscountModel implements DiscountModel {
  const factory _DiscountModel(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'discount') int discount,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'date') String date}) = _$_DiscountModel;

  factory _DiscountModel.fromJson(Map<String, dynamic> json) =
      _$_DiscountModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'discount')
  int get discount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'date')
  String get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DiscountModelCopyWith<_DiscountModel> get copyWith =>
      throw _privateConstructorUsedError;
}
