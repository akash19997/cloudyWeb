// ignore_for_file: unused_element

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gerywhite/feature/otp/data/request/verify_otp_req.dart';
import 'package:gerywhite/feature/otp/data/response/verify_otp_response.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../injection_container.dart';
import '../../../../network/account-services.dart';
part 'verify_otp_state.dart';

class VerifyOtpCubit extends Cubit<VerifyOtpState> {
  List<VerifyOtpResponse> verifyOtpResponse = [];
  VerifyOtpCubit() : super(UserLoginInitial());

  sendOtp(String number, String otp) async {
    emit(Authenticating());
    try {
      var verifyOtpResponse = await getIt<AccountServices>().verifyOtp(
          VerifyOtp(
              id: '',
              cookie_id: '22B74A13-B39B-453F-9521-69F68F7BB425',
              mobile_no: number,
              otp: otp));
      final otpResponse = VerifyOtpResponse.fromJson(verifyOtpResponse);
// otpResponse.result[0]['0']['id']
      if (otpResponse.status_code == '200') {
        if (otpResponse.result.isNotEmpty) {
          var data = await getIt<AccountServices>()
              .getprofileImage(otpResponse.result[0]['0']['id']);
          await getIt<SharedPreferences>()
              .setString('image', otpResponse.result![0]['0']['profile_image']);
        }
      }

      emit(
        UserAuthenticated(verifyOtpStateResponse: otpResponse),
      );
    } catch (e) {
      emit(
        UserUnauthenticated(e.toString()),
      );
    }
  }
}
