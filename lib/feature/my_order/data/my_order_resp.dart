import 'package:freezed_annotation/freezed_annotation.dart';
part 'my_order_resp.freezed.dart';
part 'my_order_resp.g.dart';

@Freezed()
class MyOrderList with _$MyOrderList {
  const factory MyOrderList({
    String? status,
    String? status_code,
    String? msg,
    dynamic result,
  }) = _MyOrderList;

  factory MyOrderList.fromJson(Map<String, dynamic> json) =>
      _$MyOrderListFromJson(json);
}
