import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../injection_container.dart';
import '../../../../network/account-services.dart';
import '../../data/image_rep.dart';
import '../../data/image_req.dart';
import '../../data/my_profile_req.dart';
import '../../data/my_profile_res.dart';

part 'my_profile_cubit.freezed.dart';

part 'my_profile_state.dart';

class MyProfileCubit extends Cubit<MyProfileState> {
  List<MyProfileResp>? myProfileResp;

  MyProfileCubit() : super(const MyProfileState.initial());

  myProfile({required String id}) async {
    try {
      var myProfileResp = await getIt<AccountServices>().myprofile(id);
      var data = await getIt<AccountServices>().getprofileImage(id);
      print(data);
      emit(
          MyProfileState.loaded(myProfileResp: myProfileResp, imageResp: data));
    } catch (e) {
      // print(e);
      emit(const MyProfileState.failure());
    }
  }

  dynamic data;
  Future<dynamic> proifleUpdate({
    dynamic profile_image,
    String? id,
    String? userName,
    String? userFirmName,
    String? mobile_no,
    String? userEmail,
    String? userGstNum,
    String? userBillingAddress,
    String? userAddress,
    String? userDob,
  }) async {
    try {
      data = await getIt<AccountServices>().myprofilereq(MyProfileReq(
        // profile_image: profile_image,
        id: id,
        userName: userName,
        userFirmName: userFirmName,
        mobile_no: mobile_no,
        userEmail: userEmail,
        userGstNum: userGstNum,
        userBillingAddress: userBillingAddress,
        userAddress: userAddress,
        userDob: userDob,
      ));
      print(data);
      return data;
    } catch (e) {
      return e;
    }
  }

  Future<dynamic> imageUpdate({
    String? profile_image,
    String? id,
  }) async {
    try {
      data =
          await getIt<AccountServices>().updateprofileImage(MyProfileImageReq(
        profile_image: profile_image,
        id: id,
      ));
      print(data);
      return data;
    } catch (e) {
      return e;
    }
  }
}
