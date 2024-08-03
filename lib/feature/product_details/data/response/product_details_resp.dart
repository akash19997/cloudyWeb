import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_details_resp.freezed.dart';
part 'product_details_resp.g.dart';

@Freezed()
class ProductDetailsResponse with _$ProductDetailsResponse {
  const factory ProductDetailsResponse({
    String? status,
    String? status_code,
    String? msg,
    List<Result>? result,
  }) = _ProductDetailsResponse;

  factory ProductDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsResponseFromJson(json);
}

@Freezed()
class Result with _$Result {
  const factory Result({
    ProductDetails? product_details,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@Freezed()
class ProductDetails with _$ProductDetails {
  const factory ProductDetails({
    String? product_id,
    String? product_title,
    String? product_description,
    String? is_active,
    String? productCode,
    String? usage,
    String? fabricWeave,
    String? fabricCompostionHeading,
    String? weight_gsm,
    String? width,
    String? picks_per,
    String? end_per,
    String? weftCount,
    String? warpCount,
    String? productFav,
    String? warpYarn,
    String? fabricCategory,
    String? fabricType,
    List<ProductColour>? productColour,
    // [
    //         {
    //             "colourID": "1",
    //             "colourCode": "#000000",
    //             "colourName": "Black"
    //         },
    //         {
    //             "colourID": "2",
    //             "colourCode": "#FFFFFF\t",
    //             "colourName": "White"
    //         }
    //     ],
    List<ProductImage>? productImage,
    // [
    //         {
    //             "image_id": "54",
    //             "product_id": "92",
    //             "image_title": "uploads/products/cdb93eadff17953d6c18b24304f7e8d2.jpeg"
    //         }
    //     ],
    List<Manufacturename>? manufacture_name,
    // [
    //           {
    //               "manufactureRegNo": "GWREG-1003"
    //           }
    //       ]
  }) = _ProductDetails;

  factory ProductDetails.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsFromJson(json);
}

@Freezed()
class ProductColour with _$ProductColour {
  const factory ProductColour({
    String? colourID,
    String? colourCode,
    String? colourName,
  }) = _ProductColour;

  factory ProductColour.fromJson(Map<String, dynamic> json) =>
      _$ProductColourFromJson(json);
}

@Freezed()
class Manufacturename with _$Manufacturename {
  const factory Manufacturename({
    String? manufactureRegNo,
  }) = _Manufacturename;

  factory Manufacturename.fromJson(Map<String, dynamic> json) =>
      _$ManufacturenameFromJson(json);
}

@Freezed()
class ProductImage with _$ProductImage {
  const factory ProductImage({
    String? image_id,
    String? product_id,
    String? image_title,
  }) = _ProductImage;

  factory ProductImage.fromJson(Map<String, dynamic> json) =>
      _$ProductImageFromJson(json);
}
