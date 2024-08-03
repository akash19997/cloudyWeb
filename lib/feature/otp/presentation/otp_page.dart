// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stylish_dialog/stylish_dialog.dart';

import '../../../core/constants/color/color_constant.dart';
import '../../../core/constants/enum/custom_app_button_enum.dart';
import '../../../core/constants/image/image_constant.dart';
import '../../../core/constants/utils/size_utils.dart';
import '../../../core/helper/loader_helper.dart';
import '../../../core/helper/snackbar_helper.dart';
import '../../../core/helper/stylish_dialouge.dart';
import '../../../core/navigation/route.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../injection_container.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_otp_textformfield.dart';
import 'cubit/verify_otp_cubit.dart';

class OtpScreen extends StatefulWidget {
  final String phoneNumber;
  final String otp;
  const OtpScreen({
    Key? key,
    required this.phoneNumber,
    required this.otp,
  }) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController otpNumber1 = TextEditingController();
  final TextEditingController otpNumber2 = TextEditingController();
  final TextEditingController otpNumber3 = TextEditingController();
  final TextEditingController otpNumber4 = TextEditingController();
  final TextEditingController otpNumber5 = TextEditingController();
  final TextEditingController otpNumber6 = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool showLoader = false;

  String phoneNumberData = '';
  @override
  void initState() {
    phoneNumberData = widget.phoneNumber;
    // showDialogOtp();
    print(widget.otp);
    showDialogOtp(context);
    super.initState();
  }

  void showDialogOtp(context) {
    Future.delayed(const Duration(seconds: 1)).then((value) async {
      SnackBarHelper().showStylishDialogwithbuttonLogin(
          context: context,
          titile: 'Success',
          message:
              "We have sent the verification code to your number ${widget.otp}",
          isDismiss: true,
          confirmButton: AppButton(
              buttonWidth: 100,
              buttonType: AppButtonType.PRIMARY,
              child: Text(
                'Ok',
                style: AppStyle.txtRobotoRegular14,
              ),
              onPressed: () async {
                Navigator.pop(context);
              }),
          stylishDialogType: StylishDialogType.SUCCESS);
    });
  }

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return SafeArea(
      top: false,
      bottom: false,
      child: BlocProvider(
        create: (BuildContext context) {
          return getIt<VerifyOtpCubit>();
        },
        child: Scaffold(
          backgroundColor: ColorConstant.whiteA700,
          body: Stack(
            children: [
              Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: size.height,
                    width: size.width,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // SvgPicture.asset(
                        //   ImageConstant.login,
                        //   alignment: Alignment.center,
                        //   width: MediaQuery.of(context).size.width,
                        //   height: MediaQuery.of(context).size.height,
                        // ),
                        Container(
                          // decoration: BoxDecoration(
                          //   // color: Colors.red.shade300
                          //   image: DecorationImage(
                          //       image:
                          //           AssetImage(ImageConstant.imgSplashscreens),
                          //       fit: BoxFit.cover),
                          // ),
                          constraints: BoxConstraints.expand(),
                          child: SvgPicture.asset(
                            ImageConstant.login,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                            // alignment: Alignment.center,
                            child: SizedBox(
                                width: 335,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Spacer(),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Verification code",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtRobotoBold24,
                                              ),
                                              const SizedBox(height: 10),
                                              Text(
                                                "Verification code sent to number                         ",
                                                // "We have sent the code verification to your number",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular14
                                                    .copyWith(fontSize: 15),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 20),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              AppTextFormField(
                                                onChanged: (value) {
                                                  if (value.length == 1) {
                                                    node.nextFocus();
                                                  }
                                                },
                                                keyboardType:
                                                    TextInputType.number,
                                                inputFormatters: [
                                                  LengthLimitingTextInputFormatter(
                                                      1)
                                                ],
                                                nameController: otpNumber1,
                                                width: 40,
                                              ),
                                              AppTextFormField(
                                                onChanged: (value) {
                                                  if (value.length == 1) {
                                                    node.nextFocus();
                                                  } else if (value.isEmpty) {
                                                    node.previousFocus();
                                                  }
                                                },
                                                keyboardType:
                                                    TextInputType.number,
                                                nameController: otpNumber2,
                                                inputFormatters: [
                                                  LengthLimitingTextInputFormatter(
                                                      1)
                                                ],
                                                width: 40,
                                              ),
                                              AppTextFormField(
                                                onChanged: (value) {
                                                  if (value.length == 1) {
                                                    node.nextFocus();
                                                  } else if (value.isEmpty) {
                                                    node.previousFocus();
                                                  }
                                                },
                                                keyboardType:
                                                    TextInputType.number,
                                                inputFormatters: [
                                                  LengthLimitingTextInputFormatter(
                                                      1)
                                                ],
                                                nameController: otpNumber3,
                                                width: 40,
                                              ),
                                              AppTextFormField(
                                                onChanged: (value) {
                                                  if (value.length == 1) {
                                                    node.nextFocus();
                                                  } else if (value.isEmpty) {
                                                    node.previousFocus();
                                                  }
                                                },
                                                keyboardType:
                                                    TextInputType.number,
                                                inputFormatters: [
                                                  LengthLimitingTextInputFormatter(
                                                      1)
                                                ],
                                                nameController: otpNumber4,
                                                width: 40,
                                              ),
                                              AppTextFormField(
                                                onChanged: (value) {
                                                  if (value.length == 1) {
                                                    node.nextFocus();
                                                  } else if (value.isEmpty) {
                                                    node.previousFocus();
                                                  }
                                                },
                                                keyboardType:
                                                    TextInputType.number,
                                                inputFormatters: [
                                                  LengthLimitingTextInputFormatter(
                                                      1)
                                                ],
                                                nameController: otpNumber5,
                                                width: 40,
                                              ),
                                              AppTextFormField(
                                                onChanged: (value) {
                                                  if (value.isEmpty) {
                                                    node.previousFocus();
                                                  }
                                                },
                                                keyboardType:
                                                    TextInputType.number,
                                                inputFormatters: [
                                                  LengthLimitingTextInputFormatter(
                                                      1)
                                                ],
                                                nameController: otpNumber6,
                                                width: 39,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 15),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              BlocConsumer<VerifyOtpCubit,
                                                      VerifyOtpState>(
                                                  listener: (ctx, state) async {
                                                if (state
                                                    is UserAuthenticated) {
                                                  setState(() {
                                                    showLoader = false;
                                                  });
                                                  if (state
                                                          .verifyOtpStateResponse
                                                          .status_code !=
                                                      '200') {
                                                    SnackBarHelper()
                                                        .showStylishDialog(
                                                            context: context,
                                                            titile: 'OOPS',
                                                            message: state
                                                                .verifyOtpStateResponse
                                                                .msg
                                                                .toString(),
                                                            stylishDialogType:
                                                                StylishDialogType
                                                                    .ERROR);
                                                  } else {
                                                    if (state.verifyOtpStateResponse
                                                                .result[0]
                                                            ['isRegistered'] ==
                                                        'true') {
                                                      await getIt<
                                                              SharedPreferences>()
                                                          .setBool(
                                                              'loginScreen',
                                                              true);

                                                      await getIt<
                                                              SharedPreferences>()
                                                          .setString('fullName',
                                                              ('${state.verifyOtpStateResponse.result![0]['0']['userName']}'));

                                                      ///For Storing  Name for Profile
                                                      await getIt<
                                                              SharedPreferences>()
                                                          .setString(
                                                              'gstNumber',
                                                              ('${state.verifyOtpStateResponse.result![0]['0']['userGstNum']}'));
                                                      await getIt<
                                                              SharedPreferences>()
                                                          .setString(
                                                              'id',
                                                              state
                                                                  .verifyOtpStateResponse
                                                                  .result[0]
                                                                      ['0']
                                                                      ['id']
                                                                  .toString());
                                                      await getIt<
                                                              SharedPreferences>()
                                                          .setString(
                                                              'mobile_no',
                                                              state
                                                                  .verifyOtpStateResponse
                                                                  .result![0]
                                                                      ['0'][
                                                                      'mobile_no']
                                                                  .toString());
                                                      await getIt<
                                                              SharedPreferences>()
                                                          .setString(
                                                              'userEmail',
                                                              state
                                                                  .verifyOtpStateResponse
                                                                  .result![0]
                                                                      ['0'][
                                                                      'userEmail']
                                                                  .toString());
                                                      await getIt<
                                                              SharedPreferences>()
                                                          .setString(
                                                              'userFirmName',
                                                              state
                                                                  .verifyOtpStateResponse
                                                                  .result![0]
                                                                      ['0'][
                                                                      'userFirmName']
                                                                  .toString());
                                                      await getIt<
                                                              SharedPreferences>()
                                                          .setString(
                                                              'userName',
                                                              state
                                                                  .verifyOtpStateResponse
                                                                  .result![0]
                                                                      ['0'][
                                                                      'userName']
                                                                  .toString());

                                                      ///For Storing  Name for Profile
                                                      SnackBarHelperData()
                                                          .showSnackBar(
                                                              context: context,
                                                              snackBarText:
                                                                  'User Login Sucessfully!!');
                                                      await getIt<AppRouter>()
                                                          .replaceAll([
                                                        HomeContainerScreenRoute()
                                                      ]);
                                                    } else {
                                                      SnackBarHelper()
                                                          .showStylishDialog(
                                                              context: context,
                                                              titile: 'OOPS',
                                                              message:
                                                                  'Please Try Again Later!!',
                                                              stylishDialogType:
                                                                  StylishDialogType
                                                                      .ERROR);
                                                    }
                                                  }
                                                } else if (state
                                                    is UserUnauthenticated) {
                                                  setState(() {
                                                    showLoader = false;
                                                  });
                                                  SnackBarHelper()
                                                      .showStylishDialog(
                                                          context: context,
                                                          titile: 'OOPS',
                                                          message:
                                                              'Please Try Again Later!!!',
                                                          stylishDialogType:
                                                              StylishDialogType
                                                                  .ERROR);
                                                } else if (state
                                                    is Authenticating) {
                                                  setState(() {
                                                    showLoader = true;
                                                  });
                                                }
                                              }, builder: (context, state) {
                                                return AppButton(
                                                  buttonWidth: 325,
                                                  buttonType:
                                                      AppButtonType.PRIMARY,
                                                  child: Text(
                                                    'Submit',
                                                    style: AppStyle
                                                        .txtRobotoRegular14,
                                                  ),
                                                  onPressed: () async {
                                                    if (_formKey.currentState!
                                                        .validate()) {
                                                      final userAuth =
                                                          context.read<
                                                              VerifyOtpCubit>();
                                                      await userAuth.sendOtp(
                                                          phoneNumberData,
                                                          (otpNumber1.text +
                                                              otpNumber2.text +
                                                              otpNumber3.text +
                                                              otpNumber4.text +
                                                              otpNumber5.text +
                                                              otpNumber6.text));
                                                    } else {}
                                                  },
                                                );
                                              }),
                                            ],
                                          ),
                                          const SizedBox(height: 50)
                                        ],
                                      )
                                    ]))),
                      ],
                    ),
                  ),
                ),
              ),
              if (showLoader)
                Loader.loadingIndicatorLogin(
                    true, MediaQuery.of(context).size.height),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    otpNumber1.clear();
    otpNumber2.clear();
    otpNumber3.clear();
    otpNumber4.clear();
    otpNumber5.clear();
    otpNumber6.clear();
    super.dispose();
  }
}
