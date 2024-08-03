// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductListing _$$_ProductListingFromJson(Map<String, dynamic> json) =>
    _$_ProductListing(
      status: json['status'] as String?,
      status_code: json['status_code'] as String?,
      msg: json['msg'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => ProductDetailList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductListingToJson(_$_ProductListing instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.status_code,
      'msg': instance.msg,
      'result': instance.result,
    };

_$_ProductDetailList _$$_ProductDetailListFromJson(Map<String, dynamic> json) =>
    _$_ProductDetailList(
      product_id: json['product_id'] as String?,
      product_title: json['product_title'] as String?,
      product_description: json['product_description'] as String?,
      image_title: json['image_title'] as String?,
      is_active: json['is_active'] as String?,
      status: json['status'] as String?,
      width: json['width'] as String?,
      weight_gsm: json['weight_gsm'] as String?,
      yarnCatName: json['yarnCatName'] as String?,
    );

Map<String, dynamic> _$$_ProductDetailListToJson(
        _$_ProductDetailList instance) =>
    <String, dynamic>{
      'product_id': instance.product_id,
      'product_title': instance.product_title,
      'product_description': instance.product_description,
      'image_title': instance.image_title,
      'is_active': instance.is_active,
      'status': instance.status,
      'width': instance.width,
      'weight_gsm': instance.weight_gsm,
      'yarnCatName': instance.yarnCatName,
    };
