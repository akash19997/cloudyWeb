import 'package:gerywhite/feature/my_order/presentation/cubit/my_order_cubit.dart';
import 'package:gerywhite/network/account-services.dart';

import 'core/navigation/route.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'feature/filter/presentation/cubit/yarn_cubit.dart';
import 'feature/home_screen/presentation/cubit/home_screen_cubit.dart';
import 'feature/my_enquiry/presentation/cubit/my_enquiry_cubit.dart';
import 'feature/my_profile/presentation/cubit/my_profile_cubit.dart';
import 'feature/otp/presentation/cubit/verify_otp_cubit.dart';
import 'feature/product_details/presentation/cubit/product_cubit.dart';
import 'feature/signup/presentation/cubit/signup_cubit.dart';
import 'feature/track_enquiry/presentation/cubit/track_enquiry_cubit.dart';
import 'feature/welcome/presentation/cubit/otp_cubit.dart';

final getIt = GetIt.instance;

Future init() async {
  /// 1. ROUTING
  getIt.registerSingleton<AppRouter>(AppRouter());

  /// ThirdParty packages
  getIt.registerLazySingleton<Dio>(() => Dio());
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => sharedPreferences);
  getIt.registerFactory(() => (OtpCubit()));
  getIt.registerFactory(() => (VerifyOtpCubit()));
  getIt.registerFactory(() => (YarnCubit()));
  getIt.registerFactory(() => (SignupCubit()));
  getIt.registerFactory(() => (HomeScreenCubit()));
  getIt.registerFactory(() => (ProductDetailsCubit()));
  getIt.registerFactory(() => (MyEnquiryCubit()));
  getIt.registerFactory(() => (TrackEnquiryCubit()));
  getIt.registerFactory(() => (MyProfileCubit()));
  getIt.registerFactory(() => (MyOrderCubit()));
  getIt.registerLazySingleton<AccountServices>(() => AccountServices(getIt()));
}
