import 'dart:ui';

import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gerywhite/core/navigation/route.dart';
import 'package:stylish_dialog/stylish_dialog.dart';
import '../../../core/constants/color/color_constant.dart';
import '../../../core/constants/enum/custom_app_button_enum.dart';
import '../../../core/constants/image/image_constant.dart';
import '../../../core/constants/utils/size_utils.dart';
import '../../../core/helper/loader_helper.dart';
import '../../../core/helper/snackbar_helper.dart';
import '../../../core/helper/stylish_dialouge.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../injection_container.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_country.dart';
import '../../../widgets/custom_textformfield_phone.dart';
import 'cubit/otp_cubit.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final TextEditingController phoneNumberController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');
  Color? defalutColor;
  bool showLoader = false;

  @override
  void initState() {
    defalutColor = ColorConstant.whiteA700;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: BlocProvider(
          create: (BuildContext context) {
            return getIt<OtpCubit>();
          },
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              // resizeToAvoidBottomInset: false,
              body: SingleChildScrollView(
                child: Stack(
                  children: [
                    // SvgPicture.asset(
                    //   fit: BoxFit.cover,
                    //   ImageConstant.login,
                    //   width: MediaQuery.of(context).size.width,
                    //   height: MediaQuery.of(context).size.height,
                    // ),
                    Form(
                        key: _formKey,
                        child: SizedBox(
                            height: size.height,
                            width: size.width,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Container(
                                constraints: BoxConstraints.expand(),
                                child: SvgPicture.asset(
                                  ImageConstant.login,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                        width: 335,
                                        child: Column(
                                            // crossAxisAlignment:
                                            //     CrossAxisAlignment.center,
                                            children: [
                                              const Spacer(),
                                              Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    "Welcome",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoBold24
                                                        .copyWith(fontSize: 24),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  Text(
                                                      "Stay signed in with your account to make easier",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular14
                                                          .copyWith(
                                                              fontSize: 15)),
                                                  const SizedBox(height: 20),
                                                  Container(
                                                    height: 70,
                                                    width: 335,
                                                    decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.00),
                                                      border: Border.all(
                                                        color: defalutColor!,
                                                        width: 1.00,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 10.0),
                                                          child: CustomCountry(
                                                            country:
                                                                selectedCountry,
                                                            onTap: (Country
                                                                country) {
                                                              setState(() {
                                                                selectedCountry =
                                                                    country;
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                        CustomPhoneNumber(
                                                          nameController:
                                                              phoneNumberController,
                                                          validator: (value) {
                                                            if (value!
                                                                .isEmpty) {
                                                              setState(() {
                                                                defalutColor =
                                                                    Colors.red;
                                                              });
                                                              return "";
                                                            }
                                                            return null;
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  BlocConsumer<OtpCubit,
                                                          OtpState>(
                                                      listener:
                                                          (ctx, state) async {
                                                    if (state
                                                        is UserAuthenticated) {
                                                      setState(() {
                                                        showLoader = false;
                                                      });
                                                      if (state.otpResponse[
                                                              'status_code'] !=
                                                          '200') {
                                                        if (state.otpResponse[
                                                                'msg'] ==
                                                            'Mobile Number does not exist.') {
                                                          SnackBarHelper()
                                                              .showStylishDialogwithbuttonLogin(
                                                                  context:
                                                                      context,
                                                                  titile:
                                                                      'Success',
                                                                  message:
                                                                      "You Need to SignUp First!!",
                                                                  isDismiss:
                                                                      true,
                                                                  confirmButton:
                                                                      AppButton(
                                                                          buttonWidth:
                                                                              150,
                                                                          buttonType: AppButtonType
                                                                              .PRIMARY,
                                                                          child:
                                                                              Text(
                                                                            'Proceed',
                                                                            style:
                                                                                AppStyle.txtRobotoRegular14,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            Navigator.pop(context);
                                                                            await getIt<AppRouter>().push(SelectTypeScreenRoute(
                                                                              mobNo: phoneNumberController.text,
                                                                            ));
                                                                          }),
                                                                  stylishDialogType:
                                                                      StylishDialogType
                                                                          .SUCCESS);
                                                        } else {
                                                          SnackBarHelper().showStylishDialog(
                                                              context: context,
                                                              titile: 'OOPS',
                                                              message: state
                                                                  .otpResponse
                                                                  .first
                                                                  .msg
                                                                  .toString(),
                                                              stylishDialogType:
                                                                  StylishDialogType
                                                                      .ERROR);
                                                        }
                                                      } else {
                                                        print(
                                                            state.otpResponse);
                                                        await getIt<AppRouter>()
                                                            .push(OtpScreenRoute(
                                                                phoneNumber:
                                                                    phoneNumberController
                                                                        .text,
                                                                otp: state.otpResponse[
                                                                        'result']
                                                                    [
                                                                    0]['otp']));
                                                      }
                                                    } else if (state
                                                        is UserUnauthenticated) {
                                                      print(state);
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
                                                        buttonWidth: 335,
                                                        buttonType:
                                                            AppButtonType
                                                                .PRIMARY,
                                                        child: Text(
                                                          'Submit',
                                                          style: AppStyle
                                                              .txtRobotoRegular14,
                                                        ),
                                                        onPressed: () async {
                                                          print(
                                                              selectedCountry);

                                                          if (_formKey
                                                              .currentState!
                                                              .validate()) {
                                                            if (selectedCountry
                                                                    .phoneCode ==
                                                                '91') {
                                                              if (phoneNumberController
                                                                      .text
                                                                      .length ==
                                                                  10) {
                                                                final userAuth =
                                                                    context.read<
                                                                        OtpCubit>();
                                                                await userAuth.sendOtp(
                                                                    phoneNumberController
                                                                        .text);
                                                              } else {
                                                                SnackBarHelperData().showSnackBar(
                                                                    context:
                                                                        context,
                                                                    snackBarText:
                                                                        'Please 10 digit mobile number!!');
                                                              }
                                                            } else {
                                                              SnackBarHelperData()
                                                                  .showSnackBar(
                                                                      context:
                                                                          context,
                                                                      snackBarText:
                                                                          'Please select country code as India!!');
                                                            }
                                                          } else {
                                                            SnackBarHelperData()
                                                                .showSnackBar(
                                                                    context:
                                                                        context,
                                                                    snackBarText:
                                                                        'Please Enter Mobile Number!!');
                                                          }
                                                        });
                                                  }),
                                                  const SizedBox(height: 60)
                                                ],
                                              )
                                            ]))),
                              )
                            ]))),
                    if (showLoader)
                      Loader.loadingIndicatorLogin(
                          true, MediaQuery.of(context).size.height),
                  ],
                ),
              )),
        ));
  }

  @override
  void dispose() {
    phoneNumberController.dispose();
    super.dispose();
  }
}
