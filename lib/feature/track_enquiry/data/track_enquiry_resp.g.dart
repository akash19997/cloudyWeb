// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_enquiry_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrackEnquiryResponse _$$_TrackEnquiryResponseFromJson(
        Map<String, dynamic> json) =>
    _$_TrackEnquiryResponse(
      status: json['status'] as String?,
      status_code: json['status_code'] as String?,
      msg: json['msg'] as String?,
      result: json['result'],
    );

Map<String, dynamic> _$$_TrackEnquiryResponseToJson(
        _$_TrackEnquiryResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.status_code,
      'msg': instance.msg,
      'result': instance.result,
    };
