// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_order_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyOrderList _$$_MyOrderListFromJson(Map<String, dynamic> json) =>
    _$_MyOrderList(
      status: json['status'] as String?,
      status_code: json['status_code'] as String?,
      msg: json['msg'] as String?,
      result: json['result'],
    );

Map<String, dynamic> _$$_MyOrderListToJson(_$_MyOrderList instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.status_code,
      'msg': instance.msg,
      'result': instance.result,
    };
