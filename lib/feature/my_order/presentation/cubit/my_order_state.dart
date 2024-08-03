part of 'my_order_cubit.dart';

@freezed
class MyOrderState with _$MyOrderState {
  const factory MyOrderState.initial() = _Initial;
  const factory MyOrderState.loading() = _DataLoading;
  const factory MyOrderState.loaded({
    MyOrderList? myOrderList,
  }) = _DataLoaded;
  const factory MyOrderState.failure() = _DataFailure;
}
