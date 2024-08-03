import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../injection_container.dart';
import '../../../../network/account-services.dart';
import '../../data/my_enquiry_resp.dart';

part 'my_enquiry_cubit.freezed.dart';

part 'my_enquiry_state.dart';

class MyEnquiryCubit extends Cubit<MyEnquiryState> {
  List<EnquiryResponse>? enquiryResponse;

  MyEnquiryCubit() : super(const MyEnquiryState.initial());

  myenquirytDetailListDetails({required String id}) async {
    try {
      EnquiryResponse enquiryResponse =
          await getIt<AccountServices>().myenquiry(id);
      print(enquiryResponse);
      emit(MyEnquiryState.loaded(enquiryResponse: enquiryResponse));
    } catch (e) {
      // print(e);
      emit(const MyEnquiryState.failure());
    }
  }
}
