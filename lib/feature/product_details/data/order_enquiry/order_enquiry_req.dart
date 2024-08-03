import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_enquiry_req.freezed.dart';
part 'order_enquiry_req.g.dart';

@Freezed()
class OrderEnquiryReq with _$OrderEnquiryReq {
  const factory OrderEnquiryReq(
      {required String? userId,
      required String? enquiryQuantity,
      required String? enquiryProduct,
      required String? enquiryTimeline,
      required String? enquiryComment,
      required String? enquiryProductId}) = _OrderEnquiryReq;

  factory OrderEnquiryReq.fromJson(Map<String, dynamic> json) =>
      _$OrderEnquiryReqFromJson(json);
}

//  "userId":"8",
//     "enquiryQuantity":"100",
//     "enquiryQuality":"saree",
//     "enquiryTimeline":"23/4/2023",
//     "enquiryComment" : "hi"