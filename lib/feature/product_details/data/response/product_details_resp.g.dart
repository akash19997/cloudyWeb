// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDetailsResponse _$$_ProductDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ProductDetailsResponse(
      status: json['status'] as String?,
      status_code: json['status_code'] as String?,
      msg: json['msg'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductDetailsResponseToJson(
        _$_ProductDetailsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.status_code,
      'msg': instance.msg,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      product_details: json['product_details'] == null
          ? null
          : ProductDetails.fromJson(
              json['product_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'product_details': instance.product_details,
    };

_$_ProductDetails _$$_ProductDetailsFromJson(Map<String, dynamic> json) =>
    _$_ProductDetails(
      product_id: json['product_id'] as String?,
      product_title: json['product_title'] as String?,
      product_description: json['product_description'] as String?,
      is_active: json['is_active'] as String?,
      productCode: json['productCode'] as String?,
      usage: json['usage'] as String?,
      fabricWeave: json['fabricWeave'] as String?,
      fabricCompostionHeading: json['fabricCompostionHeading'] as String?,
      weight_gsm: json['weight_gsm'] as String?,
      width: json['width'] as String?,
      picks_per: json['picks_per'] as String?,
      end_per: json['end_per'] as String?,
      weftCount: json['weftCount'] as String?,
      warpCount: json['warpCount'] as String?,
      productFav: json['productFav'] as String?,
      warpYarn: json['warpYarn'] as String?,
      fabricCategory: json['fabricCategory'] as String?,
      fabricType: json['fabricType'] as String?,
      productColour: (json['productColour'] as List<dynamic>?)
          ?.map((e) => ProductColour.fromJson(e as Map<String, dynamic>))
          .toList(),
      productImage: (json['productImage'] as List<dynamic>?)
          ?.map((e) => ProductImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      manufacture_name: (json['manufacture_name'] as List<dynamic>?)
          ?.map((e) => Manufacturename.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductDetailsToJson(_$_ProductDetails instance) =>
    <String, dynamic>{
      'product_id': instance.product_id,
      'product_title': instance.product_title,
      'product_description': instance.product_description,
      'is_active': instance.is_active,
      'productCode': instance.productCode,
      'usage': instance.usage,
      'fabricWeave': instance.fabricWeave,
      'fabricCompostionHeading': instance.fabricCompostionHeading,
      'weight_gsm': instance.weight_gsm,
      'width': instance.width,
      'picks_per': instance.picks_per,
      'end_per': instance.end_per,
      'weftCount': instance.weftCount,
      'warpCount': instance.warpCount,
      'productFav': instance.productFav,
      'warpYarn': instance.warpYarn,
      'fabricCategory': instance.fabricCategory,
      'fabricType': instance.fabricType,
      'productColour': instance.productColour,
      'productImage': instance.productImage,
      'manufacture_name': instance.manufacture_name,
    };

_$_ProductColour _$$_ProductColourFromJson(Map<String, dynamic> json) =>
    _$_ProductColour(
      colourID: json['colourID'] as String?,
      colourCode: json['colourCode'] as String?,
      colourName: json['colourName'] as String?,
    );

Map<String, dynamic> _$$_ProductColourToJson(_$_ProductColour instance) =>
    <String, dynamic>{
      'colourID': instance.colourID,
      'colourCode': instance.colourCode,
      'colourName': instance.colourName,
    };

_$_Manufacturename _$$_ManufacturenameFromJson(Map<String, dynamic> json) =>
    _$_Manufacturename(
      manufactureRegNo: json['manufactureRegNo'] as String?,
    );

Map<String, dynamic> _$$_ManufacturenameToJson(_$_Manufacturename instance) =>
    <String, dynamic>{
      'manufactureRegNo': instance.manufactureRegNo,
    };

_$_ProductImage _$$_ProductImageFromJson(Map<String, dynamic> json) =>
    _$_ProductImage(
      image_id: json['image_id'] as String?,
      product_id: json['product_id'] as String?,
      image_title: json['image_title'] as String?,
    );

Map<String, dynamic> _$$_ProductImageToJson(_$_ProductImage instance) =>
    <String, dynamic>{
      'image_id': instance.image_id,
      'product_id': instance.product_id,
      'image_title': instance.image_title,
    };
