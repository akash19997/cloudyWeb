import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_response.freezed.dart';
part 'product_response.g.dart';

@Freezed()
class ProductListing with _$ProductListing {
  const factory ProductListing({
    String? status,
    String? status_code,
    String? msg,
    List<ProductDetailList>? result,
  }) = _ProductListing;

  factory ProductListing.fromJson(Map<String, dynamic> json) =>
      _$ProductListingFromJson(json);
}

@Freezed()
class ProductDetailList with _$ProductDetailList {
  const factory ProductDetailList({
    String? product_id,
    String? product_title,
    String? product_description,
    String? image_title,
    String? is_active,
    String? status,
    String? width,
    String? weight_gsm,
    String? yarnCatName,
  }) = _ProductDetailList;

  factory ProductDetailList.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailListFromJson(json);
}

    // "image_title": "uploads/products/ddb405f9aa126db38a44f5c8f706b07a.jpg",
    //         "width": "50",
    //         "weight_gsm": "1000",
    //         "yarnCatName": "synthetic",
    //         "is_active": "1",
    //         "status": "1"

    // "product_id": "28",
    //         "product_title": "Black Court",
    //         "product_description":