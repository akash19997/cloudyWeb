import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_enquiry_req.freezed.dart';
part 'my_enquiry_req.g.dart';

@Freezed()
class MyEnquiryReq with _$MyEnquiryReq {
  const factory MyEnquiryReq({
    required String? enquiryUser,
  }) = _MyEnquiryReq;

  factory MyEnquiryReq.fromJson(Map<String, dynamic> json) =>
      _$MyEnquiryReqFromJson(json);
}
