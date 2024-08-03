// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_details_resp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDetailsResponse _$ProductDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _ProductDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailsResponse {
  String? get status => throw _privateConstructorUsedError;
  String? get status_code => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;
  List<Result>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailsResponseCopyWith<ProductDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsResponseCopyWith<$Res> {
  factory $ProductDetailsResponseCopyWith(ProductDetailsResponse value,
          $Res Function(ProductDetailsResponse) then) =
      _$ProductDetailsResponseCopyWithImpl<$Res, ProductDetailsResponse>;
  @useResult
  $Res call(
      {String? status, String? status_code, String? msg, List<Result>? result});
}

/// @nodoc
class _$ProductDetailsResponseCopyWithImpl<$Res,
        $Val extends ProductDetailsResponse>
    implements $ProductDetailsResponseCopyWith<$Res> {
  _$ProductDetailsResponseCopyWithImpl(this._value, this._then);

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
              as List<Result>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductDetailsResponseCopyWith<$Res>
    implements $ProductDetailsResponseCopyWith<$Res> {
  factory _$$_ProductDetailsResponseCopyWith(_$_ProductDetailsResponse value,
          $Res Function(_$_ProductDetailsResponse) then) =
      __$$_ProductDetailsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status, String? status_code, String? msg, List<Result>? result});
}

/// @nodoc
class __$$_ProductDetailsResponseCopyWithImpl<$Res>
    extends _$ProductDetailsResponseCopyWithImpl<$Res,
        _$_ProductDetailsResponse>
    implements _$$_ProductDetailsResponseCopyWith<$Res> {
  __$$_ProductDetailsResponseCopyWithImpl(_$_ProductDetailsResponse _value,
      $Res Function(_$_ProductDetailsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? status_code = freezed,
    Object? msg = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_ProductDetailsResponse(
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
              as List<Result>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDetailsResponse implements _ProductDetailsResponse {
  const _$_ProductDetailsResponse(
      {this.status, this.status_code, this.msg, final List<Result>? result})
      : _result = result;

  factory _$_ProductDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDetailsResponseFromJson(json);

  @override
  final String? status;
  @override
  final String? status_code;
  @override
  final String? msg;
  final List<Result>? _result;
  @override
  List<Result>? get result {
    final value = _result;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductDetailsResponse(status: $status, status_code: $status_code, msg: $msg, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDetailsResponse &&
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
  _$$_ProductDetailsResponseCopyWith<_$_ProductDetailsResponse> get copyWith =>
      __$$_ProductDetailsResponseCopyWithImpl<_$_ProductDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDetailsResponseToJson(
      this,
    );
  }
}

abstract class _ProductDetailsResponse implements ProductDetailsResponse {
  const factory _ProductDetailsResponse(
      {final String? status,
      final String? status_code,
      final String? msg,
      final List<Result>? result}) = _$_ProductDetailsResponse;

  factory _ProductDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_ProductDetailsResponse.fromJson;

  @override
  String? get status;
  @override
  String? get status_code;
  @override
  String? get msg;
  @override
  List<Result>? get result;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailsResponseCopyWith<_$_ProductDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  ProductDetails? get product_details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({ProductDetails? product_details});

  $ProductDetailsCopyWith<$Res>? get product_details;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_details = freezed,
  }) {
    return _then(_value.copyWith(
      product_details: freezed == product_details
          ? _value.product_details
          : product_details // ignore: cast_nullable_to_non_nullable
              as ProductDetails?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDetailsCopyWith<$Res>? get product_details {
    if (_value.product_details == null) {
      return null;
    }

    return $ProductDetailsCopyWith<$Res>(_value.product_details!, (value) {
      return _then(_value.copyWith(product_details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductDetails? product_details});

  @override
  $ProductDetailsCopyWith<$Res>? get product_details;
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_details = freezed,
  }) {
    return _then(_$_Result(
      product_details: freezed == product_details
          ? _value.product_details
          : product_details // ignore: cast_nullable_to_non_nullable
              as ProductDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result({this.product_details});

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final ProductDetails? product_details;

  @override
  String toString() {
    return 'Result(product_details: $product_details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            (identical(other.product_details, product_details) ||
                other.product_details == product_details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product_details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result({final ProductDetails? product_details}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  ProductDetails? get product_details;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDetails _$ProductDetailsFromJson(Map<String, dynamic> json) {
  return _ProductDetails.fromJson(json);
}

/// @nodoc
mixin _$ProductDetails {
  String? get product_id => throw _privateConstructorUsedError;
  String? get product_title => throw _privateConstructorUsedError;
  String? get product_description => throw _privateConstructorUsedError;
  String? get is_active => throw _privateConstructorUsedError;
  String? get productCode => throw _privateConstructorUsedError;
  String? get usage => throw _privateConstructorUsedError;
  String? get fabricWeave => throw _privateConstructorUsedError;
  String? get fabricCompostionHeading => throw _privateConstructorUsedError;
  String? get weight_gsm => throw _privateConstructorUsedError;
  String? get width => throw _privateConstructorUsedError;
  String? get picks_per => throw _privateConstructorUsedError;
  String? get end_per => throw _privateConstructorUsedError;
  String? get weftCount => throw _privateConstructorUsedError;
  String? get warpCount => throw _privateConstructorUsedError;
  String? get productFav => throw _privateConstructorUsedError;
  String? get warpYarn => throw _privateConstructorUsedError;
  String? get fabricCategory => throw _privateConstructorUsedError;
  String? get fabricType => throw _privateConstructorUsedError;
  List<ProductColour>? get productColour =>
      throw _privateConstructorUsedError; // [
//         {
//             "colourID": "1",
//             "colourCode": "#000000",
//             "colourName": "Black"
//         },
//         {
//             "colourID": "2",
//             "colourCode": "#FFFFFF\t",
//             "colourName": "White"
//         }
//     ],
  List<ProductImage>? get productImage =>
      throw _privateConstructorUsedError; // [
//         {
//             "image_id": "54",
//             "product_id": "92",
//             "image_title": "uploads/products/cdb93eadff17953d6c18b24304f7e8d2.jpeg"
//         }
//     ],
  List<Manufacturename>? get manufacture_name =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailsCopyWith<ProductDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsCopyWith<$Res> {
  factory $ProductDetailsCopyWith(
          ProductDetails value, $Res Function(ProductDetails) then) =
      _$ProductDetailsCopyWithImpl<$Res, ProductDetails>;
  @useResult
  $Res call(
      {String? product_id,
      String? product_title,
      String? product_description,
      String? is_active,
      String? productCode,
      String? usage,
      String? fabricWeave,
      String? fabricCompostionHeading,
      String? weight_gsm,
      String? width,
      String? picks_per,
      String? end_per,
      String? weftCount,
      String? warpCount,
      String? productFav,
      String? warpYarn,
      String? fabricCategory,
      String? fabricType,
      List<ProductColour>? productColour,
      List<ProductImage>? productImage,
      List<Manufacturename>? manufacture_name});
}

/// @nodoc
class _$ProductDetailsCopyWithImpl<$Res, $Val extends ProductDetails>
    implements $ProductDetailsCopyWith<$Res> {
  _$ProductDetailsCopyWithImpl(this._value, this._then);

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
    Object? is_active = freezed,
    Object? productCode = freezed,
    Object? usage = freezed,
    Object? fabricWeave = freezed,
    Object? fabricCompostionHeading = freezed,
    Object? weight_gsm = freezed,
    Object? width = freezed,
    Object? picks_per = freezed,
    Object? end_per = freezed,
    Object? weftCount = freezed,
    Object? warpCount = freezed,
    Object? productFav = freezed,
    Object? warpYarn = freezed,
    Object? fabricCategory = freezed,
    Object? fabricType = freezed,
    Object? productColour = freezed,
    Object? productImage = freezed,
    Object? manufacture_name = freezed,
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
      is_active: freezed == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as String?,
      productCode: freezed == productCode
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String?,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as String?,
      fabricWeave: freezed == fabricWeave
          ? _value.fabricWeave
          : fabricWeave // ignore: cast_nullable_to_non_nullable
              as String?,
      fabricCompostionHeading: freezed == fabricCompostionHeading
          ? _value.fabricCompostionHeading
          : fabricCompostionHeading // ignore: cast_nullable_to_non_nullable
              as String?,
      weight_gsm: freezed == weight_gsm
          ? _value.weight_gsm
          : weight_gsm // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String?,
      picks_per: freezed == picks_per
          ? _value.picks_per
          : picks_per // ignore: cast_nullable_to_non_nullable
              as String?,
      end_per: freezed == end_per
          ? _value.end_per
          : end_per // ignore: cast_nullable_to_non_nullable
              as String?,
      weftCount: freezed == weftCount
          ? _value.weftCount
          : weftCount // ignore: cast_nullable_to_non_nullable
              as String?,
      warpCount: freezed == warpCount
          ? _value.warpCount
          : warpCount // ignore: cast_nullable_to_non_nullable
              as String?,
      productFav: freezed == productFav
          ? _value.productFav
          : productFav // ignore: cast_nullable_to_non_nullable
              as String?,
      warpYarn: freezed == warpYarn
          ? _value.warpYarn
          : warpYarn // ignore: cast_nullable_to_non_nullable
              as String?,
      fabricCategory: freezed == fabricCategory
          ? _value.fabricCategory
          : fabricCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      fabricType: freezed == fabricType
          ? _value.fabricType
          : fabricType // ignore: cast_nullable_to_non_nullable
              as String?,
      productColour: freezed == productColour
          ? _value.productColour
          : productColour // ignore: cast_nullable_to_non_nullable
              as List<ProductColour>?,
      productImage: freezed == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as List<ProductImage>?,
      manufacture_name: freezed == manufacture_name
          ? _value.manufacture_name
          : manufacture_name // ignore: cast_nullable_to_non_nullable
              as List<Manufacturename>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductDetailsCopyWith<$Res>
    implements $ProductDetailsCopyWith<$Res> {
  factory _$$_ProductDetailsCopyWith(
          _$_ProductDetails value, $Res Function(_$_ProductDetails) then) =
      __$$_ProductDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? product_id,
      String? product_title,
      String? product_description,
      String? is_active,
      String? productCode,
      String? usage,
      String? fabricWeave,
      String? fabricCompostionHeading,
      String? weight_gsm,
      String? width,
      String? picks_per,
      String? end_per,
      String? weftCount,
      String? warpCount,
      String? productFav,
      String? warpYarn,
      String? fabricCategory,
      String? fabricType,
      List<ProductColour>? productColour,
      List<ProductImage>? productImage,
      List<Manufacturename>? manufacture_name});
}

/// @nodoc
class __$$_ProductDetailsCopyWithImpl<$Res>
    extends _$ProductDetailsCopyWithImpl<$Res, _$_ProductDetails>
    implements _$$_ProductDetailsCopyWith<$Res> {
  __$$_ProductDetailsCopyWithImpl(
      _$_ProductDetails _value, $Res Function(_$_ProductDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = freezed,
    Object? product_title = freezed,
    Object? product_description = freezed,
    Object? is_active = freezed,
    Object? productCode = freezed,
    Object? usage = freezed,
    Object? fabricWeave = freezed,
    Object? fabricCompostionHeading = freezed,
    Object? weight_gsm = freezed,
    Object? width = freezed,
    Object? picks_per = freezed,
    Object? end_per = freezed,
    Object? weftCount = freezed,
    Object? warpCount = freezed,
    Object? productFav = freezed,
    Object? warpYarn = freezed,
    Object? fabricCategory = freezed,
    Object? fabricType = freezed,
    Object? productColour = freezed,
    Object? productImage = freezed,
    Object? manufacture_name = freezed,
  }) {
    return _then(_$_ProductDetails(
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
      is_active: freezed == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as String?,
      productCode: freezed == productCode
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String?,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as String?,
      fabricWeave: freezed == fabricWeave
          ? _value.fabricWeave
          : fabricWeave // ignore: cast_nullable_to_non_nullable
              as String?,
      fabricCompostionHeading: freezed == fabricCompostionHeading
          ? _value.fabricCompostionHeading
          : fabricCompostionHeading // ignore: cast_nullable_to_non_nullable
              as String?,
      weight_gsm: freezed == weight_gsm
          ? _value.weight_gsm
          : weight_gsm // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String?,
      picks_per: freezed == picks_per
          ? _value.picks_per
          : picks_per // ignore: cast_nullable_to_non_nullable
              as String?,
      end_per: freezed == end_per
          ? _value.end_per
          : end_per // ignore: cast_nullable_to_non_nullable
              as String?,
      weftCount: freezed == weftCount
          ? _value.weftCount
          : weftCount // ignore: cast_nullable_to_non_nullable
              as String?,
      warpCount: freezed == warpCount
          ? _value.warpCount
          : warpCount // ignore: cast_nullable_to_non_nullable
              as String?,
      productFav: freezed == productFav
          ? _value.productFav
          : productFav // ignore: cast_nullable_to_non_nullable
              as String?,
      warpYarn: freezed == warpYarn
          ? _value.warpYarn
          : warpYarn // ignore: cast_nullable_to_non_nullable
              as String?,
      fabricCategory: freezed == fabricCategory
          ? _value.fabricCategory
          : fabricCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      fabricType: freezed == fabricType
          ? _value.fabricType
          : fabricType // ignore: cast_nullable_to_non_nullable
              as String?,
      productColour: freezed == productColour
          ? _value._productColour
          : productColour // ignore: cast_nullable_to_non_nullable
              as List<ProductColour>?,
      productImage: freezed == productImage
          ? _value._productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as List<ProductImage>?,
      manufacture_name: freezed == manufacture_name
          ? _value._manufacture_name
          : manufacture_name // ignore: cast_nullable_to_non_nullable
              as List<Manufacturename>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDetails implements _ProductDetails {
  const _$_ProductDetails(
      {this.product_id,
      this.product_title,
      this.product_description,
      this.is_active,
      this.productCode,
      this.usage,
      this.fabricWeave,
      this.fabricCompostionHeading,
      this.weight_gsm,
      this.width,
      this.picks_per,
      this.end_per,
      this.weftCount,
      this.warpCount,
      this.productFav,
      this.warpYarn,
      this.fabricCategory,
      this.fabricType,
      final List<ProductColour>? productColour,
      final List<ProductImage>? productImage,
      final List<Manufacturename>? manufacture_name})
      : _productColour = productColour,
        _productImage = productImage,
        _manufacture_name = manufacture_name;

  factory _$_ProductDetails.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDetailsFromJson(json);

  @override
  final String? product_id;
  @override
  final String? product_title;
  @override
  final String? product_description;
  @override
  final String? is_active;
  @override
  final String? productCode;
  @override
  final String? usage;
  @override
  final String? fabricWeave;
  @override
  final String? fabricCompostionHeading;
  @override
  final String? weight_gsm;
  @override
  final String? width;
  @override
  final String? picks_per;
  @override
  final String? end_per;
  @override
  final String? weftCount;
  @override
  final String? warpCount;
  @override
  final String? productFav;
  @override
  final String? warpYarn;
  @override
  final String? fabricCategory;
  @override
  final String? fabricType;
  final List<ProductColour>? _productColour;
  @override
  List<ProductColour>? get productColour {
    final value = _productColour;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// [
//         {
//             "colourID": "1",
//             "colourCode": "#000000",
//             "colourName": "Black"
//         },
//         {
//             "colourID": "2",
//             "colourCode": "#FFFFFF\t",
//             "colourName": "White"
//         }
//     ],
  final List<ProductImage>? _productImage;
// [
//         {
//             "colourID": "1",
//             "colourCode": "#000000",
//             "colourName": "Black"
//         },
//         {
//             "colourID": "2",
//             "colourCode": "#FFFFFF\t",
//             "colourName": "White"
//         }
//     ],
  @override
  List<ProductImage>? get productImage {
    final value = _productImage;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// [
//         {
//             "image_id": "54",
//             "product_id": "92",
//             "image_title": "uploads/products/cdb93eadff17953d6c18b24304f7e8d2.jpeg"
//         }
//     ],
  final List<Manufacturename>? _manufacture_name;
// [
//         {
//             "image_id": "54",
//             "product_id": "92",
//             "image_title": "uploads/products/cdb93eadff17953d6c18b24304f7e8d2.jpeg"
//         }
//     ],
  @override
  List<Manufacturename>? get manufacture_name {
    final value = _manufacture_name;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductDetails(product_id: $product_id, product_title: $product_title, product_description: $product_description, is_active: $is_active, productCode: $productCode, usage: $usage, fabricWeave: $fabricWeave, fabricCompostionHeading: $fabricCompostionHeading, weight_gsm: $weight_gsm, width: $width, picks_per: $picks_per, end_per: $end_per, weftCount: $weftCount, warpCount: $warpCount, productFav: $productFav, warpYarn: $warpYarn, fabricCategory: $fabricCategory, fabricType: $fabricType, productColour: $productColour, productImage: $productImage, manufacture_name: $manufacture_name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDetails &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.product_title, product_title) ||
                other.product_title == product_title) &&
            (identical(other.product_description, product_description) ||
                other.product_description == product_description) &&
            (identical(other.is_active, is_active) ||
                other.is_active == is_active) &&
            (identical(other.productCode, productCode) ||
                other.productCode == productCode) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            (identical(other.fabricWeave, fabricWeave) ||
                other.fabricWeave == fabricWeave) &&
            (identical(
                    other.fabricCompostionHeading, fabricCompostionHeading) ||
                other.fabricCompostionHeading == fabricCompostionHeading) &&
            (identical(other.weight_gsm, weight_gsm) ||
                other.weight_gsm == weight_gsm) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.picks_per, picks_per) ||
                other.picks_per == picks_per) &&
            (identical(other.end_per, end_per) || other.end_per == end_per) &&
            (identical(other.weftCount, weftCount) ||
                other.weftCount == weftCount) &&
            (identical(other.warpCount, warpCount) ||
                other.warpCount == warpCount) &&
            (identical(other.productFav, productFav) ||
                other.productFav == productFav) &&
            (identical(other.warpYarn, warpYarn) ||
                other.warpYarn == warpYarn) &&
            (identical(other.fabricCategory, fabricCategory) ||
                other.fabricCategory == fabricCategory) &&
            (identical(other.fabricType, fabricType) ||
                other.fabricType == fabricType) &&
            const DeepCollectionEquality()
                .equals(other._productColour, _productColour) &&
            const DeepCollectionEquality()
                .equals(other._productImage, _productImage) &&
            const DeepCollectionEquality()
                .equals(other._manufacture_name, _manufacture_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        product_id,
        product_title,
        product_description,
        is_active,
        productCode,
        usage,
        fabricWeave,
        fabricCompostionHeading,
        weight_gsm,
        width,
        picks_per,
        end_per,
        weftCount,
        warpCount,
        productFav,
        warpYarn,
        fabricCategory,
        fabricType,
        const DeepCollectionEquality().hash(_productColour),
        const DeepCollectionEquality().hash(_productImage),
        const DeepCollectionEquality().hash(_manufacture_name)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDetailsCopyWith<_$_ProductDetails> get copyWith =>
      __$$_ProductDetailsCopyWithImpl<_$_ProductDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDetailsToJson(
      this,
    );
  }
}

abstract class _ProductDetails implements ProductDetails {
  const factory _ProductDetails(
      {final String? product_id,
      final String? product_title,
      final String? product_description,
      final String? is_active,
      final String? productCode,
      final String? usage,
      final String? fabricWeave,
      final String? fabricCompostionHeading,
      final String? weight_gsm,
      final String? width,
      final String? picks_per,
      final String? end_per,
      final String? weftCount,
      final String? warpCount,
      final String? productFav,
      final String? warpYarn,
      final String? fabricCategory,
      final String? fabricType,
      final List<ProductColour>? productColour,
      final List<ProductImage>? productImage,
      final List<Manufacturename>? manufacture_name}) = _$_ProductDetails;

  factory _ProductDetails.fromJson(Map<String, dynamic> json) =
      _$_ProductDetails.fromJson;

  @override
  String? get product_id;
  @override
  String? get product_title;
  @override
  String? get product_description;
  @override
  String? get is_active;
  @override
  String? get productCode;
  @override
  String? get usage;
  @override
  String? get fabricWeave;
  @override
  String? get fabricCompostionHeading;
  @override
  String? get weight_gsm;
  @override
  String? get width;
  @override
  String? get picks_per;
  @override
  String? get end_per;
  @override
  String? get weftCount;
  @override
  String? get warpCount;
  @override
  String? get productFav;
  @override
  String? get warpYarn;
  @override
  String? get fabricCategory;
  @override
  String? get fabricType;
  @override
  List<ProductColour>? get productColour;
  @override // [
//         {
//             "colourID": "1",
//             "colourCode": "#000000",
//             "colourName": "Black"
//         },
//         {
//             "colourID": "2",
//             "colourCode": "#FFFFFF\t",
//             "colourName": "White"
//         }
//     ],
  List<ProductImage>? get productImage;
  @override // [
//         {
//             "image_id": "54",
//             "product_id": "92",
//             "image_title": "uploads/products/cdb93eadff17953d6c18b24304f7e8d2.jpeg"
//         }
//     ],
  List<Manufacturename>? get manufacture_name;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailsCopyWith<_$_ProductDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductColour _$ProductColourFromJson(Map<String, dynamic> json) {
  return _ProductColour.fromJson(json);
}

/// @nodoc
mixin _$ProductColour {
  String? get colourID => throw _privateConstructorUsedError;
  String? get colourCode => throw _privateConstructorUsedError;
  String? get colourName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductColourCopyWith<ProductColour> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductColourCopyWith<$Res> {
  factory $ProductColourCopyWith(
          ProductColour value, $Res Function(ProductColour) then) =
      _$ProductColourCopyWithImpl<$Res, ProductColour>;
  @useResult
  $Res call({String? colourID, String? colourCode, String? colourName});
}

/// @nodoc
class _$ProductColourCopyWithImpl<$Res, $Val extends ProductColour>
    implements $ProductColourCopyWith<$Res> {
  _$ProductColourCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colourID = freezed,
    Object? colourCode = freezed,
    Object? colourName = freezed,
  }) {
    return _then(_value.copyWith(
      colourID: freezed == colourID
          ? _value.colourID
          : colourID // ignore: cast_nullable_to_non_nullable
              as String?,
      colourCode: freezed == colourCode
          ? _value.colourCode
          : colourCode // ignore: cast_nullable_to_non_nullable
              as String?,
      colourName: freezed == colourName
          ? _value.colourName
          : colourName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductColourCopyWith<$Res>
    implements $ProductColourCopyWith<$Res> {
  factory _$$_ProductColourCopyWith(
          _$_ProductColour value, $Res Function(_$_ProductColour) then) =
      __$$_ProductColourCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? colourID, String? colourCode, String? colourName});
}

/// @nodoc
class __$$_ProductColourCopyWithImpl<$Res>
    extends _$ProductColourCopyWithImpl<$Res, _$_ProductColour>
    implements _$$_ProductColourCopyWith<$Res> {
  __$$_ProductColourCopyWithImpl(
      _$_ProductColour _value, $Res Function(_$_ProductColour) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colourID = freezed,
    Object? colourCode = freezed,
    Object? colourName = freezed,
  }) {
    return _then(_$_ProductColour(
      colourID: freezed == colourID
          ? _value.colourID
          : colourID // ignore: cast_nullable_to_non_nullable
              as String?,
      colourCode: freezed == colourCode
          ? _value.colourCode
          : colourCode // ignore: cast_nullable_to_non_nullable
              as String?,
      colourName: freezed == colourName
          ? _value.colourName
          : colourName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductColour implements _ProductColour {
  const _$_ProductColour({this.colourID, this.colourCode, this.colourName});

  factory _$_ProductColour.fromJson(Map<String, dynamic> json) =>
      _$$_ProductColourFromJson(json);

  @override
  final String? colourID;
  @override
  final String? colourCode;
  @override
  final String? colourName;

  @override
  String toString() {
    return 'ProductColour(colourID: $colourID, colourCode: $colourCode, colourName: $colourName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductColour &&
            (identical(other.colourID, colourID) ||
                other.colourID == colourID) &&
            (identical(other.colourCode, colourCode) ||
                other.colourCode == colourCode) &&
            (identical(other.colourName, colourName) ||
                other.colourName == colourName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, colourID, colourCode, colourName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductColourCopyWith<_$_ProductColour> get copyWith =>
      __$$_ProductColourCopyWithImpl<_$_ProductColour>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductColourToJson(
      this,
    );
  }
}

abstract class _ProductColour implements ProductColour {
  const factory _ProductColour(
      {final String? colourID,
      final String? colourCode,
      final String? colourName}) = _$_ProductColour;

  factory _ProductColour.fromJson(Map<String, dynamic> json) =
      _$_ProductColour.fromJson;

  @override
  String? get colourID;
  @override
  String? get colourCode;
  @override
  String? get colourName;
  @override
  @JsonKey(ignore: true)
  _$$_ProductColourCopyWith<_$_ProductColour> get copyWith =>
      throw _privateConstructorUsedError;
}

Manufacturename _$ManufacturenameFromJson(Map<String, dynamic> json) {
  return _Manufacturename.fromJson(json);
}

/// @nodoc
mixin _$Manufacturename {
  String? get manufactureRegNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ManufacturenameCopyWith<Manufacturename> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManufacturenameCopyWith<$Res> {
  factory $ManufacturenameCopyWith(
          Manufacturename value, $Res Function(Manufacturename) then) =
      _$ManufacturenameCopyWithImpl<$Res, Manufacturename>;
  @useResult
  $Res call({String? manufactureRegNo});
}

/// @nodoc
class _$ManufacturenameCopyWithImpl<$Res, $Val extends Manufacturename>
    implements $ManufacturenameCopyWith<$Res> {
  _$ManufacturenameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manufactureRegNo = freezed,
  }) {
    return _then(_value.copyWith(
      manufactureRegNo: freezed == manufactureRegNo
          ? _value.manufactureRegNo
          : manufactureRegNo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ManufacturenameCopyWith<$Res>
    implements $ManufacturenameCopyWith<$Res> {
  factory _$$_ManufacturenameCopyWith(
          _$_Manufacturename value, $Res Function(_$_Manufacturename) then) =
      __$$_ManufacturenameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? manufactureRegNo});
}

/// @nodoc
class __$$_ManufacturenameCopyWithImpl<$Res>
    extends _$ManufacturenameCopyWithImpl<$Res, _$_Manufacturename>
    implements _$$_ManufacturenameCopyWith<$Res> {
  __$$_ManufacturenameCopyWithImpl(
      _$_Manufacturename _value, $Res Function(_$_Manufacturename) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manufactureRegNo = freezed,
  }) {
    return _then(_$_Manufacturename(
      manufactureRegNo: freezed == manufactureRegNo
          ? _value.manufactureRegNo
          : manufactureRegNo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Manufacturename implements _Manufacturename {
  const _$_Manufacturename({this.manufactureRegNo});

  factory _$_Manufacturename.fromJson(Map<String, dynamic> json) =>
      _$$_ManufacturenameFromJson(json);

  @override
  final String? manufactureRegNo;

  @override
  String toString() {
    return 'Manufacturename(manufactureRegNo: $manufactureRegNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Manufacturename &&
            (identical(other.manufactureRegNo, manufactureRegNo) ||
                other.manufactureRegNo == manufactureRegNo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, manufactureRegNo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ManufacturenameCopyWith<_$_Manufacturename> get copyWith =>
      __$$_ManufacturenameCopyWithImpl<_$_Manufacturename>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ManufacturenameToJson(
      this,
    );
  }
}

abstract class _Manufacturename implements Manufacturename {
  const factory _Manufacturename({final String? manufactureRegNo}) =
      _$_Manufacturename;

  factory _Manufacturename.fromJson(Map<String, dynamic> json) =
      _$_Manufacturename.fromJson;

  @override
  String? get manufactureRegNo;
  @override
  @JsonKey(ignore: true)
  _$$_ManufacturenameCopyWith<_$_Manufacturename> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductImage _$ProductImageFromJson(Map<String, dynamic> json) {
  return _ProductImage.fromJson(json);
}

/// @nodoc
mixin _$ProductImage {
  String? get image_id => throw _privateConstructorUsedError;
  String? get product_id => throw _privateConstructorUsedError;
  String? get image_title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductImageCopyWith<ProductImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductImageCopyWith<$Res> {
  factory $ProductImageCopyWith(
          ProductImage value, $Res Function(ProductImage) then) =
      _$ProductImageCopyWithImpl<$Res, ProductImage>;
  @useResult
  $Res call({String? image_id, String? product_id, String? image_title});
}

/// @nodoc
class _$ProductImageCopyWithImpl<$Res, $Val extends ProductImage>
    implements $ProductImageCopyWith<$Res> {
  _$ProductImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image_id = freezed,
    Object? product_id = freezed,
    Object? image_title = freezed,
  }) {
    return _then(_value.copyWith(
      image_id: freezed == image_id
          ? _value.image_id
          : image_id // ignore: cast_nullable_to_non_nullable
              as String?,
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as String?,
      image_title: freezed == image_title
          ? _value.image_title
          : image_title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductImageCopyWith<$Res>
    implements $ProductImageCopyWith<$Res> {
  factory _$$_ProductImageCopyWith(
          _$_ProductImage value, $Res Function(_$_ProductImage) then) =
      __$$_ProductImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? image_id, String? product_id, String? image_title});
}

/// @nodoc
class __$$_ProductImageCopyWithImpl<$Res>
    extends _$ProductImageCopyWithImpl<$Res, _$_ProductImage>
    implements _$$_ProductImageCopyWith<$Res> {
  __$$_ProductImageCopyWithImpl(
      _$_ProductImage _value, $Res Function(_$_ProductImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image_id = freezed,
    Object? product_id = freezed,
    Object? image_title = freezed,
  }) {
    return _then(_$_ProductImage(
      image_id: freezed == image_id
          ? _value.image_id
          : image_id // ignore: cast_nullable_to_non_nullable
              as String?,
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as String?,
      image_title: freezed == image_title
          ? _value.image_title
          : image_title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductImage implements _ProductImage {
  const _$_ProductImage({this.image_id, this.product_id, this.image_title});

  factory _$_ProductImage.fromJson(Map<String, dynamic> json) =>
      _$$_ProductImageFromJson(json);

  @override
  final String? image_id;
  @override
  final String? product_id;
  @override
  final String? image_title;

  @override
  String toString() {
    return 'ProductImage(image_id: $image_id, product_id: $product_id, image_title: $image_title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductImage &&
            (identical(other.image_id, image_id) ||
                other.image_id == image_id) &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.image_title, image_title) ||
                other.image_title == image_title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, image_id, product_id, image_title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductImageCopyWith<_$_ProductImage> get copyWith =>
      __$$_ProductImageCopyWithImpl<_$_ProductImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductImageToJson(
      this,
    );
  }
}

abstract class _ProductImage implements ProductImage {
  const factory _ProductImage(
      {final String? image_id,
      final String? product_id,
      final String? image_title}) = _$_ProductImage;

  factory _ProductImage.fromJson(Map<String, dynamic> json) =
      _$_ProductImage.fromJson;

  @override
  String? get image_id;
  @override
  String? get product_id;
  @override
  String? get image_title;
  @override
  @JsonKey(ignore: true)
  _$$_ProductImageCopyWith<_$_ProductImage> get copyWith =>
      throw _privateConstructorUsedError;
}
