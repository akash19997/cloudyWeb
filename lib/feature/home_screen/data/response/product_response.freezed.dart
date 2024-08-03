// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductListing _$ProductListingFromJson(Map<String, dynamic> json) {
  return _ProductListing.fromJson(json);
}

/// @nodoc
mixin _$ProductListing {
  String? get status => throw _privateConstructorUsedError;
  String? get status_code => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;
  List<ProductDetailList>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductListingCopyWith<ProductListing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListingCopyWith<$Res> {
  factory $ProductListingCopyWith(
          ProductListing value, $Res Function(ProductListing) then) =
      _$ProductListingCopyWithImpl<$Res, ProductListing>;
  @useResult
  $Res call(
      {String? status,
      String? status_code,
      String? msg,
      List<ProductDetailList>? result});
}

/// @nodoc
class _$ProductListingCopyWithImpl<$Res, $Val extends ProductListing>
    implements $ProductListingCopyWith<$Res> {
  _$ProductListingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? status_code = freezed,
    Object? msg = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      status_code: freezed == status_code
          ? _value.status_code
          : status_code // ignore: cast_nullable_to_non_nullable
              as String?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<ProductDetailList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductListingCopyWith<$Res>
    implements $ProductListingCopyWith<$Res> {
  factory _$$_ProductListingCopyWith(
          _$_ProductListing value, $Res Function(_$_ProductListing) then) =
      __$$_ProductListingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      String? status_code,
      String? msg,
      List<ProductDetailList>? result});
}

/// @nodoc
class __$$_ProductListingCopyWithImpl<$Res>
    extends _$ProductListingCopyWithImpl<$Res, _$_ProductListing>
    implements _$$_ProductListingCopyWith<$Res> {
  __$$_ProductListingCopyWithImpl(
      _$_ProductListing _value, $Res Function(_$_ProductListing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? status_code = freezed,
    Object? msg = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_ProductListing(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      status_code: freezed == status_code
          ? _value.status_code
          : status_code // ignore: cast_nullable_to_non_nullable
              as String?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<ProductDetailList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductListing implements _ProductListing {
  const _$_ProductListing(
      {this.status,
      this.status_code,
      this.msg,
      final List<ProductDetailList>? result})
      : _result = result;

  factory _$_ProductListing.fromJson(Map<String, dynamic> json) =>
      _$$_ProductListingFromJson(json);

  @override
  final String? status;
  @override
  final String? status_code;
  @override
  final String? msg;
  final List<ProductDetailList>? _result;
  @override
  List<ProductDetailList>? get result {
    final value = _result;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductListing(status: $status, status_code: $status_code, msg: $msg, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductListing &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.status_code, status_code) ||
                other.status_code == status_code) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, status_code, msg,
      const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductListingCopyWith<_$_ProductListing> get copyWith =>
      __$$_ProductListingCopyWithImpl<_$_ProductListing>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductListingToJson(
      this,
    );
  }
}

abstract class _ProductListing implements ProductListing {
  const factory _ProductListing(
      {final String? status,
      final String? status_code,
      final String? msg,
      final List<ProductDetailList>? result}) = _$_ProductListing;

  factory _ProductListing.fromJson(Map<String, dynamic> json) =
      _$_ProductListing.fromJson;

  @override
  String? get status;
  @override
  String? get status_code;
  @override
  String? get msg;
  @override
  List<ProductDetailList>? get result;
  @override
  @JsonKey(ignore: true)
  _$$_ProductListingCopyWith<_$_ProductListing> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDetailList _$ProductDetailListFromJson(Map<String, dynamic> json) {
  return _ProductDetailList.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailList {
  String? get product_id => throw _privateConstructorUsedError;
  String? get product_title => throw _privateConstructorUsedError;
  String? get product_description => throw _privateConstructorUsedError;
  String? get image_title => throw _privateConstructorUsedError;
  String? get is_active => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get width => throw _privateConstructorUsedError;
  String? get weight_gsm => throw _privateConstructorUsedError;
  String? get yarnCatName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailListCopyWith<ProductDetailList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailListCopyWith<$Res> {
  factory $ProductDetailListCopyWith(
          ProductDetailList value, $Res Function(ProductDetailList) then) =
      _$ProductDetailListCopyWithImpl<$Res, ProductDetailList>;
  @useResult
  $Res call(
      {String? product_id,
      String? product_title,
      String? product_description,
      String? image_title,
      String? is_active,
      String? status,
      String? width,
      String? weight_gsm,
      String? yarnCatName});
}

/// @nodoc
class _$ProductDetailListCopyWithImpl<$Res, $Val extends ProductDetailList>
    implements $ProductDetailListCopyWith<$Res> {
  _$ProductDetailListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = freezed,
    Object? product_title = freezed,
    Object? product_description = freezed,
    Object? image_title = freezed,
    Object? is_active = freezed,
    Object? status = freezed,
    Object? width = freezed,
    Object? weight_gsm = freezed,
    Object? yarnCatName = freezed,
  }) {
    return _then(_value.copyWith(
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as String?,
      product_title: freezed == product_title
          ? _value.product_title
          : product_title // ignore: cast_nullable_to_non_nullable
              as String?,
      product_description: freezed == product_description
          ? _value.product_description
          : product_description // ignore: cast_nullable_to_non_nullable
              as String?,
      image_title: freezed == image_title
          ? _value.image_title
          : image_title // ignore: cast_nullable_to_non_nullable
              as String?,
      is_active: freezed == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String?,
      weight_gsm: freezed == weight_gsm
          ? _value.weight_gsm
          : weight_gsm // ignore: cast_nullable_to_non_nullable
              as String?,
      yarnCatName: freezed == yarnCatName
          ? _value.yarnCatName
          : yarnCatName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductDetailListCopyWith<$Res>
    implements $ProductDetailListCopyWith<$Res> {
  factory _$$_ProductDetailListCopyWith(_$_ProductDetailList value,
          $Res Function(_$_ProductDetailList) then) =
      __$$_ProductDetailListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? product_id,
      String? product_title,
      String? product_description,
      String? image_title,
      String? is_active,
      String? status,
      String? width,
      String? weight_gsm,
      String? yarnCatName});
}

/// @nodoc
class __$$_ProductDetailListCopyWithImpl<$Res>
    extends _$ProductDetailListCopyWithImpl<$Res, _$_ProductDetailList>
    implements _$$_ProductDetailListCopyWith<$Res> {
  __$$_ProductDetailListCopyWithImpl(
      _$_ProductDetailList _value, $Res Function(_$_ProductDetailList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = freezed,
    Object? product_title = freezed,
    Object? product_description = freezed,
    Object? image_title = freezed,
    Object? is_active = freezed,
    Object? status = freezed,
    Object? width = freezed,
    Object? weight_gsm = freezed,
    Object? yarnCatName = freezed,
  }) {
    return _then(_$_ProductDetailList(
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as String?,
      product_title: freezed == product_title
          ? _value.product_title
          : product_title // ignore: cast_nullable_to_non_nullable
              as String?,
      product_description: freezed == product_description
          ? _value.product_description
          : product_description // ignore: cast_nullable_to_non_nullable
              as String?,
      image_title: freezed == image_title
          ? _value.image_title
          : image_title // ignore: cast_nullable_to_non_nullable
              as String?,
      is_active: freezed == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String?,
      weight_gsm: freezed == weight_gsm
          ? _value.weight_gsm
          : weight_gsm // ignore: cast_nullable_to_non_nullable
              as String?,
      yarnCatName: freezed == yarnCatName
          ? _value.yarnCatName
          : yarnCatName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDetailList implements _ProductDetailList {
  const _$_ProductDetailList(
      {this.product_id,
      this.product_title,
      this.product_description,
      this.image_title,
      this.is_active,
      this.status,
      this.width,
      this.weight_gsm,
      this.yarnCatName});

  factory _$_ProductDetailList.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDetailListFromJson(json);

  @override
  final String? product_id;
  @override
  final String? product_title;
  @override
  final String? product_description;
  @override
  final String? image_title;
  @override
  final String? is_active;
  @override
  final String? status;
  @override
  final String? width;
  @override
  final String? weight_gsm;
  @override
  final String? yarnCatName;

  @override
  String toString() {
    return 'ProductDetailList(product_id: $product_id, product_title: $product_title, product_description: $product_description, image_title: $image_title, is_active: $is_active, status: $status, width: $width, weight_gsm: $weight_gsm, yarnCatName: $yarnCatName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDetailList &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.product_title, product_title) ||
                other.product_title == product_title) &&
            (identical(other.product_description, product_description) ||
                other.product_description == product_description) &&
            (identical(other.image_title, image_title) ||
                other.image_title == image_title) &&
            (identical(other.is_active, is_active) ||
                other.is_active == is_active) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.weight_gsm, weight_gsm) ||
                other.weight_gsm == weight_gsm) &&
            (identical(other.yarnCatName, yarnCatName) ||
                other.yarnCatName == yarnCatName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      product_id,
      product_title,
      product_description,
      image_title,
      is_active,
      status,
      width,
      weight_gsm,
      yarnCatName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDetailListCopyWith<_$_ProductDetailList> get copyWith =>
      __$$_ProductDetailListCopyWithImpl<_$_ProductDetailList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDetailListToJson(
      this,
    );
  }
}

abstract class _ProductDetailList implements ProductDetailList {
  const factory _ProductDetailList(
      {final String? product_id,
      final String? product_title,
      final String? product_description,
      final String? image_title,
      final String? is_active,
      final String? status,
      final String? width,
      final String? weight_gsm,
      final String? yarnCatName}) = _$_ProductDetailList;

  factory _ProductDetailList.fromJson(Map<String, dynamic> json) =
      _$_ProductDetailList.fromJson;

  @override
  String? get product_id;
  @override
  String? get product_title;
  @override
  String? get product_description;
  @override
  String? get image_title;
  @override
  String? get is_active;
  @override
  String? get status;
  @override
  String? get width;
  @override
  String? get weight_gsm;
  @override
  String? get yarnCatName;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailListCopyWith<_$_ProductDetailList> get copyWith =>
      throw _privateConstructorUsedError;
}
