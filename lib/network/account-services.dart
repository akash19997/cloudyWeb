// ignore_for_file: file_names

import 'package:gerywhite/feature/my_enquiry/data/my_enquiry_resp.dart';
import 'package:gerywhite/feature/my_enquiry/presentation/my_enquiry.dart';
import 'package:gerywhite/feature/my_order/data/my_order_resp.dart';
import 'package:gerywhite/feature/otp/data/request/verify_otp_req.dart';
import 'package:gerywhite/feature/signup/data/request/signup_request.dart';
import 'package:gerywhite/feature/welcome/data/response/otp_resp.dart';
import 'package:retrofit/http.dart';

import '../feature/filter/data/response/filter_res.dart';
import '../feature/home_screen/data/response/product_response.dart';
import '../feature/my_enquiry/data/my_enquiry_req.dart';
import '../feature/my_profile/data/image_rep.dart';
import '../feature/my_profile/data/image_req.dart';
import '../feature/my_profile/data/my_profile_req.dart';
import '../feature/my_profile/data/my_profile_res.dart';
import '../feature/product_details/data/order_enquiry/order_enquiry_req.dart';
import '../feature/product_details/data/response/product_details_resp.dart';
import '../feature/track_enquiry/data/track_enquiry_resp.dart';
import '../feature/welcome/data/request/otp_req.dart';
import 'package:dio/dio.dart';

part 'account-services.g.dart';

@RestApi(
    baseUrl: 'https://demos.thewebdemo.net/graywhite-dev/web/version_1/api/')
abstract class AccountServices {
  factory AccountServices(Dio dio, {String baseUrl}) = _AccountServices;

  @POST('getOtp')
  Future<dynamic> loginOtp(@Body() OtpRequest otpRequest);

  @POST('verifyOtp')
  Future<dynamic> verifyOtp(@Body() VerifyOtp verifyOtp);

  @POST('userSignup')
  Future<dynamic> signupRequest(@Body() SignupRequest verifyOtp);

  @GET('yarnCategory')
  Future<dynamic> getYarnCategory();
  // @POST('verifyOtp yarnCategory')
  // Future<dynamic> loginOtp(@Body() OtpRequest otpRequest);
  @GET('productsListing')
  Future<ProductListing> productsListing();

  @GET('productsDetail')
  Future<ProductDetailsResponse> getproductListDetals(
    @Query('product_id') String id,
    @Query('userId') String userId,
  );

  @GET('enquiryListing')
  Future<EnquiryResponse> myenquiry(
    @Query('userId') String id,
  );
  @GET('enquiryDetail')
  Future<TrackEnquiryResponse> enquiryDetial(
    @Query('enquiryId') String id,
  );
  @POST('productEnquiry')
  Future<dynamic> orderEnquiry(@Body() OrderEnquiryReq orderEnquiryReq);

  @GET('userProfile')
  Future<MyProfileResp> myprofile(
    @Query('userId') String userId,
  );
  //MyProfileResp

  @PUT('editProfile')
  Future<dynamic> myprofilereq(@Body() MyProfileReq myProfileReq);
  // profilePhoto
  @PUT('profilePhoto')
  Future<dynamic> updateprofileImage(
      @Body() MyProfileImageReq myProfileImageReq);

  //
  @GET('profileImage')
  Future<ImageResp> getprofileImage(
    @Query('userId') String id,
  );
  //M

  @GET('orderListing')
  Future<MyOrderList> getMyOrder(
    @Query('userId') String orderUser,
  );
}
