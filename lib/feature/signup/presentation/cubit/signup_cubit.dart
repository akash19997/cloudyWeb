import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gerywhite/feature/signup/data/request/signup_request.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../injection_container.dart';
import '../../../../network/account-services.dart';
import '../../data/response/signup_response.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  List<SignupResponse> signupResponse = [];
  SignupCubit() : super(UserLoginInitial());

  sendOtp(String name, String userFirmName, String userEmail, String number,
      String userGstNum, String city) async {
    emit(Authenticating());
    try {
      var signupResponse = await getIt<AccountServices>().signupRequest(
          SignupRequest(
              id: '',
              cookie_id: '22B74A13-B39B-453F-9521-69F68F7BB425',
              mobile_no: number,
              userEmail: userEmail,
              userFirmName: userFirmName,
              userGstNum: userGstNum,
              userName: name,
              userCity: city));

      final response = SignupResponse.fromJson(signupResponse);
      if (response.status_code == '200') {
        if (response.result!.isNotEmpty) {
          var data = await getIt<AccountServices>()
              .getprofileImage(response.result!.first.id.toString());
          // await getIt<SharedPreferences>()
          //     .setString('image', data.result![0]['profile_image']);
        }
      }

      emit(
        UserAuthenticated(signupResponse: response),
      );
    } catch (e) {
      emit(
        UserUnauthenticated(e.toString()),
      );
    }
  }
}
