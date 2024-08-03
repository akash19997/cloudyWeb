import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gerywhite/feature/filter/data/response/filter_res.dart';

import '../../../../injection_container.dart';
import '../../../../network/account-services.dart';

part 'yarn_cubit.freezed.dart';
part 'yarn_state.dart';

class YarnCubit extends Cubit<YarnState> {
  List<YarnResp>? yarnResop;

  YarnCubit() : super(const YarnState.initial());

  getyarnDetails() async {
    try {
      var yarnResop = await getIt<AccountServices>().getYarnCategory();
      print(yarnResop);
// final response = YarnResp.fromJson(yarResponse);
      emit(YarnState.loaded(gyarnResponse: yarnResop));
    } catch (e) {
      print(e);
      emit(const YarnState.failure());
    }
  }
}
