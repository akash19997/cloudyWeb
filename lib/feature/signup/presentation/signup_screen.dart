// ignore_for_file: use_build_context_synchronously

import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
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
import '../../../core/theme/app_decoration.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../injection_container.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_country.dart';
import '../../../widgets/custom_text_formfield.dart';
import '../../../widgets/custom_textformfield_phone.dart';
import 'cubit/signup_cubit.dart';

class SignUpScreen extends StatefulWidget {
  final String mobNo;
  const SignUpScreen({super.key, required this.mobNo});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController firmName = TextEditingController();
  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController userGst = TextEditingController();
  TextEditingController address = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Country selectedCountry1 = CountryPickerUtils.getCountryByPhoneCode('91');
  Color? defalutColor;
  bool showLoader = false;

  @override
  void initState() {
    defalutColor = ColorConstant.gray200;
    phoneNumberController.text = widget.mobNo;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(top: 30.0),
      top: false,
      bottom: false,
      child: BlocProvider(
        create: (BuildContext context) {
          return getIt<SignupCubit>();
        },
        child: Stack(
          children: [
            Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: SizedBox(
                    width: size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 20),
                          Text(
                            "Sign Up",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoBold24Bluegray700,
                          ),
                          const SizedBox(height: 28),
                          Text(
                            "Full Name",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium14,
                          ),
                          const SizedBox(height: 5),
                          CustomFormField(
                            // validator: (value) {
                            //   if (value!.isEmpty) {
                            //     return "";
                            //   }
                            //   return null;
                            // },
                            nameController: name,
                            hintText: "Enter Name",
                            width: 350,
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: SvgPicture.asset(
                                ImageConstant.imgUser,
                                height: 5,
                                width: 5,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Firm Name",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium14,
                          ),
                          const SizedBox(height: 5),
                          CustomFormField(
                            // validator: (value) {
                            //   if (value!.isEmpty) {
                            //     return "";
                            //   }
                            //   return null;
                            // },
                            nameController: firmName,
                            hintText: "Enter Firm Name",
                            width: 350,
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: SvgPicture.asset(
                                ImageConstant.imgVolume,
                                height: 5,
                                width: 5,
                              ),
                            ),
                          ),
                          Container(
                            decoration: AppDecoration.outlineGray200.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Mobile Number",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium14
                                .copyWith(color: Colors.grey),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 70,
                            width: 350,
                            decoration: BoxDecoration(
                              color: ColorConstant.whiteA700,
                              borderRadius: BorderRadius.circular(5.00),
                              border: Border.all(
                                color: defalutColor!,
                                width: 1.00,
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: CustomCountry(
                                    country: selectedCountry1,
                                    onTap: (Country country) {
                                      setState(() {
                                        selectedCountry = country;
                                      });
                                    },
                                  ),
                                ),
                                CustomPhoneNumber(
                                  readOnly: true,
                                  // width: 350,
                                  nameController: phoneNumberController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      setState(() {
                                        defalutColor = Colors.red;
                                      });
                                      return "";
                                    }
                                    return null;
                                  },
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Email ID (Optional)",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoMedium14,
                          ),
                          const SizedBox(height: 5),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomFormField(
                                keyboardType: TextInputType.emailAddress,
                                // validator: (value) {
                                //   if (value!.isEmpty) {
                                //     return "";
                                //   } else if (EmailValidator.validate(value) !=
                                //       true) {
                                //     return "";
                                //   } else {
                                //     return null;
                                //   }
                                // },
                                nameController: email,
                                hintText: "Enter Email",
                                width: 350,
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgMail,
                                    height: 5,
                                    width: 5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "City",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoMedium14,
                          ),
                          const SizedBox(height: 5),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "";
                                  }
                                  return null;
                                },
                                nameController: address,
                                hintText: "Enter City",
                                width: 350,
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgLocation,
                                    height: 5,
                                    width: 5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "GST number (optional)",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium14,
                          ),
                          const SizedBox(height: 5),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomFormField(
                                // validator: (value) {
                                //   if (value!.isEmpty) {
                                //     return "";
                                //   }
                                //   return null;
                                // },
                                nameController: userGst,
                                hintText: "Enter GST number (optional)",
                                width: 350,
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgMaximize,
                                    height: 5,
                                    width: 5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BlocConsumer<SignupCubit, SignupState>(
                                  listener: (ctx, state) async {
                                if (state is UserAuthenticated) {
                                  setState(() {
                                    showLoader = false;
                                  });
                                  if (state.signupResponse.status_code !=
                                      '200') {
                                    SnackBarHelper().showStylishDialog(
                                        context: context,
                                        titile: 'OOPS',
                                        message:
                                            state.signupResponse.msg.toString(),
                                        stylishDialogType:
                                            StylishDialogType.ERROR);
                                  } else {
                                    await getIt<SharedPreferences>()
                                        .setBool('loginScreen', true);

                                    await getIt<SharedPreferences>().setString(
                                        'fullName',
                                        ('${state.signupResponse.result!.first.userName}'));

                                    ///For Storing  Name for Profile
                                    await getIt<SharedPreferences>().setString(
                                        'gstNumber',
                                        ('${state.signupResponse.result!.first.userGstNum}'));
                                    await getIt<SharedPreferences>().setString(
                                        'id',
                                        state.signupResponse.result!.first.id
                                            .toString());
                                    await getIt<SharedPreferences>().setString(
                                        'mobile_no',
                                        state.signupResponse.result!.first
                                            .mobile_no
                                            .toString());
                                    await getIt<SharedPreferences>().setString(
                                        'userEmail',
                                        state.signupResponse.result!.first
                                            .userEmail
                                            .toString());
                                    await getIt<SharedPreferences>().setString(
                                        'userFirmName',
                                        state.signupResponse.result!.first
                                            .userFirmName
                                            .toString());
                                    await getIt<SharedPreferences>().setString(
                                        'userName',
                                        state.signupResponse.result!.first
                                            .userName
                                            .toString());

                                    ///For Storing  Name for Profile
                                    SnackBarHelperData().showSnackBar(
                                        context: context,
                                        snackBarText:
                                            'User Sign Up Successfully!!');
                                    await getIt<AppRouter>().replaceAll(
                                        [HomeContainerScreenRoute()]);
                                  }
                                } else if (state is UserUnauthenticated) {
                                  setState(() {
                                    showLoader = false;
                                  });
                                  SnackBarHelper().showStylishDialog(
                                      context: context,
                                      titile: 'OOPS',
                                      message: 'Please Try Again Later!!!',
                                      stylishDialogType:
                                          StylishDialogType.ERROR);
                                } else if (state is Authenticating) {
                                  setState(() {
                                    showLoader = true;
                                  });
                                }
                              }, builder: (context, state) {
                                return AppButton(
                                    buttonWidth: 335,
                                    buttonType: AppButtonType.PRIMARY,
                                    child: Text(
                                      'Sign Up',
                                      style: AppStyle.txtRobotoRegular14,
                                    ),
                                    onPressed: () async {
                                      if (_formKey.currentState!.validate()) {
                                        final userAuth =
                                            context.read<SignupCubit>();
                                        await userAuth.sendOtp(
                                            name.text,
                                            firmName.text,
                                            email.text,
                                            phoneNumberController.text,
                                            userGst.text,
                                            address.text);
                                      } else {}
                                      SnackBarHelperData().showSnackBar(
                                          context: context,
                                          snackBarText:
                                              'Please enter City Name!!');
                                    });
                              }),
                            ],
                          ),
                          const SizedBox(height: 50)
                        ],
                      ),
                    ),
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
    );
  }
}
