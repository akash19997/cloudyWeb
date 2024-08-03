part of 'product_cubit.dart';

// @freezed
// class ProductDetailsState with _$ProductDetailsState {
//   const factory ProductDetailsState.initial() = _Initial;
//   const factory ProductDetailsState.loading() = _DataLoading;
//   const factory ProductDetailsState.loaded({
//     ProductDetailsResponse? productDetailsResponse,
//   }) = _DataLoaded;
//   const factory ProductDetailsState.failure() = _DataFailure;
// }

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState.initial() = _Initial;
  const factory ProductDetailsState.loading() = _DataLoading;
  const factory ProductDetailsState.loaded({
    ProductDetailsResponse? productListing,
  }) = _DataLoaded;
  const factory ProductDetailsState.failure() = _DataFailure;
}
