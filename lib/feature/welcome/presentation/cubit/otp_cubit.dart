// ignore_for_file: unused_element

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gerywhite/network/account-services.dart';
import '../../../../injection_container.dart';
import '../../data/request/otp_req.dart';
import '../../data/response/otp_resp.dart';
part 'otp_state.dart';

class OtpCubit extends Cubit<OtpState> {
  List<OtpResponse> otpResponse = [];
  OtpCubit() : super(UserLoginInitial());

  sendOtp(String number) async {
    emit(Authenticating());
    try {
      var otpResponse = await getIt<AccountServices>().loginOtp(
        OtpRequest(
          id: '',
          cookie_id: '22B74A13-B39B-453F-9521-69F68F7BB425',
          mobile_no: number,
        ),
      );
      emit(
        UserAuthenticated(otpResponse: otpResponse),
      );
    } catch (e) {
      // print(e);
      emit(
        UserUnauthenticated(e.toString()),
      );
    }
  }
}
