import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gerywhite/feature/my_order/data/my_order_resp.dart';

import '../../../../injection_container.dart';
import '../../../../network/account-services.dart';

part 'my_order_cubit.freezed.dart';

part 'my_order_state.dart';

class MyOrderCubit extends Cubit<MyOrderState> {
  List<MyOrderList>? myOrderList;

  MyOrderCubit() : super(const MyOrderState.initial());

  myordertDetailListDetails({required String id}) async {
    try {
      MyOrderList myOrderList = await getIt<AccountServices>().getMyOrder(id);
      emit(MyOrderState.loaded(myOrderList: myOrderList));
    } catch (e) {
      // print(e);
      emit(const MyOrderState.failure());
    }
  }
}
