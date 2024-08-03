// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_enquiry_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EnquiryResponse _$$_EnquiryResponseFromJson(Map<String, dynamic> json) =>
    _$_EnquiryResponse(
      status: json['status'] as String?,
      status_code: json['status_code'] as String?,
      msg: json['msg'] as String?,
      result: json['result'],
    );

Map<String, dynamic> _$$_EnquiryResponseToJson(_$_EnquiryResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.status_code,
      'msg': instance.msg,
      'result': instance.result,
    };
