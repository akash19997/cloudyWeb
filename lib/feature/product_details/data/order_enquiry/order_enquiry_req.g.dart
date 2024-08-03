// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_enquiry_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderEnquiryReq _$$_OrderEnquiryReqFromJson(Map<String, dynamic> json) =>
    _$_OrderEnquiryReq(
      userId: json['userId'] as String?,
      enquiryQuantity: json['enquiryQuantity'] as String?,
      enquiryProduct: json['enquiryProduct'] as String?,
      enquiryTimeline: json['enquiryTimeline'] as String?,
      enquiryComment: json['enquiryComment'] as String?,
      enquiryProductId: json['enquiryProductId'] as String?,
    );

Map<String, dynamic> _$$_OrderEnquiryReqToJson(_$_OrderEnquiryReq instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'enquiryQuantity': instance.enquiryQuantity,
      'enquiryProduct': instance.enquiryProduct,
      'enquiryTimeline': instance.enquiryTimeline,
      'enquiryComment': instance.enquiryComment,
      'enquiryProductId': instance.enquiryProductId,
    };
