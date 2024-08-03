import 'dart:convert';
import 'dart:io';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gerywhite/feature/my_profile/presentation/cubit/my_profile_cubit.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stylish_dialog/stylish_dialog.dart';

import '../../../core/constants/color/color_constant.dart';
import '../../../core/constants/enum/custom_app_button_enum.dart';
import '../../../core/constants/image/image_constant.dart';
import '../../../core/constants/utils/size_utils.dart';
import '../../../core/helper/loader_helper.dart';
import '../../../core/helper/stylish_dialouge.dart';
import '../../../core/navigation/route.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../injection_container.dart';
import '../../../pages/data_notfound.dart';
import '../../../widgets/appbar/custom_app_bar.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image.dart';
import '../../../widgets/custom_text_formfield.dart';
import '../../home_screen/presentation/cubit/home_screen_cubit.dart';
import 'package:file_picker/file_picker.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class MyProfileScreen extends StatefulWidget {
  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  TextEditingController nameController1 = TextEditingController();
  TextEditingController firmNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController billingAddressController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController gstNumberController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController demo = TextEditingController();
  String name = '';
  String frimName = '';
  String email = '';
  String contactNo = '';
  String gstNumber = '';
  String id = '';
  String address = '';
  String dateOfBirth = '';
  String billingAddress = '';

  @override
  void initState() {
    // getDtailsofUser();
    super.initState();
  }

  String date = '';

  Future<DateTime?> startDatePicker(
      BuildContext context, TextEditingController startDate) async {
    return await showDatePicker(
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.light(
                onSurface: ColorConstant.pink700Primary,
                primary: ColorConstant.pink700Primary),
            dialogBackgroundColor: Colors.white,
          ),
          child: child!,
        );
      },
      context: context,
      initialDate: (startDate.text.isNotEmpty)
          ? DateTime.parse(startDate.text)
          : DateTime.now(),
      firstDate: DateTime.now().subtract(const Duration(days: 365)),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
  }

  File? file;
  bool dataLoaded = false;
  var imageDataFromAPi;
  Base64Codec base64 = const Base64Codec();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: BlocProvider(
        create: (context) => getIt<MyProfileCubit>()
          ..myProfile(id: getIt<SharedPreferences>().getString('id') ?? '0'),
        child: Scaffold(
          backgroundColor: ColorConstant.whiteA700,
          resizeToAvoidBottomInset: false,
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(65),
              child: CustomAppBar(
                title: 'My Profile ',
                backbutton: true,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )),
          body: Stack(
            children: [
              BlocConsumer<MyProfileCubit, MyProfileState>(
                  listener: (context, state) {
                state.maybeWhen(
                    loaded: (responseData, imageData) => {
                          setState(() {
                            dataLoaded = true;
                            nameController1.text = responseData!.result![0]
                                ['userDetial']['userName'];
                            firmNameController.text = responseData.result![0]
                                ['userDetial']['userFirmName'];
                            emailController.text = responseData.result![0]
                                ['userDetial']['userEmail'];
                            contactController.text = responseData.result![0]
                                ['userDetial']['mobile_no'];
                            addressController.text = responseData.result![0]
                                ['userDetial']['userAddress'];
                            billingAddressController.text = responseData
                                .result![0]['userDetial']['userBillingAddress'];
                            date = responseData.result![0]['userDetial']
                                ['userDob'];
                            dateOfBirthController.text = date;
                            gstNumberController.text = responseData.result![0]
                                ['userDetial']['userGstNum'];
                            imageDataFromAPi =
                                imageData!.result![0]['profile_image'];
                          }),
                        },
                    failure: () => {
                          setState(() {
                            dataLoaded = true;
                          })
                        },
                    orElse: () {});
              }, builder: (context, state) {
                return state.maybeWhen(
                    initial: () => const Center(child: Text('')),
                    loading: () => Loader.loadingIndicatorDefault(true),
                    loaded: (responseData, imageData) {
                      if (responseData!.status_code == '200') {
                        return customForm(context, responseData);
                      } else {
                        return customForm(context, responseData);
                      }
                    },
                    orElse: () => Container(),
                    failure: () => const DataNotFoundPage());
              }),
              if (!dataLoaded) Loader.loadingIndicatorDefault(true)
            ],
          ),
        ),
      ),
    );
  }

  Widget customForm(BuildContext context, dynamic responseData) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Padding(
            padding: getPadding(left: 20, top: 16, right: 20, bottom: 5),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () async {
                          browseCamera().then((XFile? cameraResult) async {
                            var file = File(cameraResult!.path);
                            var bytes = await file.readAsBytes();

                            setState(() {
                              imageDataFromAPi = base64EncodeImage(bytes);
                            });
                          });
                        },
                        child: Container(
                            height: getVerticalSize(133.00),
                            width: getHorizontalSize(95.00),
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                          padding: getPadding(bottom: 10),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 50.0),
                                                  child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgFloatingicon,
                                                    height: 30,
                                                    width: 30,
                                                  ),
                                                ),
                                              ]))),
                                  InkWell(
                                      child: (imageDataFromAPi.isEmpty)
                                          ? Icon(
                                              Icons.person,
                                              size: 55,
                                            )
                                          : Image.memory(
                                              base64Decode(imageDataFromAPi),
                                            ))
                                ])),
                      )),
                  const SizedBox(height: 20),
                  Text(
                    "Full Name",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium14,
                  ),
                  const SizedBox(height: 5),
                  CustomFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "";
                      }
                      return null;
                    },
                    nameController: nameController1,
                    hintText: name,
                    width: 350,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        ImageConstant.imgUserGray900,
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "";
                      }
                      return null;
                    },
                    nameController: firmNameController,
                    hintText: frimName,
                    width: 350,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        ImageConstant.imgGrid,
                        height: 5,
                        width: 5,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "E-Mail",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium14,
                  ),
                  const SizedBox(height: 5),
                  CustomFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "";
                      } else if (EmailValidator.validate(value) != true) {
                        return "";
                      } else {
                        return null;
                      }
                    },
                    nameController: emailController,
                    hintText: email,
                    width: 350,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        ImageConstant.imgMailGray900,
                        height: 5,
                        width: 5,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Contact No",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium14,
                  ),
                  const SizedBox(height: 5),
                  CustomFormField(
                    readOnly: true,
                    nameController: contactController,
                    hintText: contactNo,
                    width: 350,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        ImageConstant.imgGlobeBlueGray90002,
                        height: 5,
                        width: 5,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Address",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium14,
                  ),
                  const SizedBox(height: 5),
                  CustomFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "";
                      }
                      return null;
                    },
                    nameController: addressController,
                    hintText: address,
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
                  const SizedBox(height: 20),
                  Text(
                    "Billing Address",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium14,
                  ),
                  const SizedBox(height: 5),
                  CustomFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "";
                      }
                      return null;
                    },
                    nameController: billingAddressController,
                    hintText: billingAddress,
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
                  const SizedBox(height: 20),
                  Text(
                    "Date of Birth",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium14,
                  ),
                  const SizedBox(height: 5),
                  CustomFormField(
                    readOnly: true,
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2100));

                      if (pickedDate != null) {
                        print(
                            pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                        String formattedDate =
                            DateFormat('yyyy-MM-dd').format(pickedDate);
                        print(
                            formattedDate); //formatted date output using intl package =>  2021-03-16
                        setState(() {
                          dateOfBirthController.text = formattedDate;
                          print(dateOfBirthController
                              .text); //set output date to TextField value.
                        });
                      } else {
                        print('erroe');
                      }
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "";
                      }
                      return null;
                    },
                    nameController: dateOfBirthController,
                    width: 350,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        ImageConstant.imgCalendar,
                        height: 5,
                        width: 5,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "GST number",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium14,
                  ),
                  const SizedBox(height: 5),
                  CustomFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "";
                      }
                      return null;
                    },
                    nameController: gstNumberController,
                    hintText: gstNumber,
                    width: 350,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        ImageConstant.imgQuestion,
                        height: 5,
                        width: 5,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppButton(
                        buttonWidth: 335,
                        buttonType: AppButtonType.PRIMARY,
                        child: Text(
                          'Submit',
                          style: AppStyle.txtRobotoRegular14,
                        ),
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              dataLoaded = false;
                            });
                            await MyProfileCubit()
                                .proifleUpdate(
                              profile_image: file,
                              id: getIt<SharedPreferences>().getString('id') ??
                                  '0',
                              userName: nameController1.text,
                              userFirmName: firmNameController.text,
                              mobile_no: contactController.text,
                              userEmail: emailController.text,
                              userGstNum: gstNumberController.text,
                              userBillingAddress: billingAddressController.text,
                              userAddress: addressController.text,
                              userDob: dateOfBirthController.text,
                            )
                                .then((value) async {
                              await MyProfileCubit()
                                  .imageUpdate(
                                      id: getIt<SharedPreferences>()
                                              .getString('id') ??
                                          '0',
                                      profile_image: imageDataFromAPi)
                                  .then((value) async {
                                setState(() {
                                  dataLoaded = true;
                                });
                                if (value["status"] == "success") {
                                  await getIt<SharedPreferences>()
                                      .setString('image', imageDataFromAPi);
                                  // ignore: use_build_context_synchronously
                                  await SnackBarHelper()
                                      .showStylishDialog(
                                          context: context,
                                          titile: 'SUCESS',
                                          message:
                                              'Profile Updateded Successfully!!',
                                          stylishDialogType:
                                              StylishDialogType.SUCCESS)
                                      .then((value) {
                                    Future.delayed(Duration(milliseconds: 500))
                                        .then((value) {
                                      Navigator.pop(context, true);
                                      Navigator.pop(context, true);
                                    });
                                  });
                                  //
                                } else {
                                  SnackBarHelper().showStylishDialog(
                                      context: context,
                                      titile: 'OOPS',
                                      message: '',
                                      stylishDialogType:
                                          StylishDialogType.ERROR);
                                }
                              });
                            });
                          }
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 50)
                ])),
      ),
    );
  }

  onTapArrowleft13(BuildContext context) {
    Navigator.pop(context);
  }

  String base64EncodeImage(Uint8List bytes) {
    String base64Image = base64Encode(bytes);
    return base64Image;
  }

  // Future browserImageFiles({
  //   bool? allowMultiple,
  // }) async {
  //   FilePickerResult? result = await FilePicker.platform.pickFiles(
  //     allowCompression: false,
  //     type: FileType.image,
  //     allowMultiple: (allowMultiple == null) ? false : allowMultiple,
  //     withData: true,
  //   );
  //   return result;
  // }

  Future<XFile?> browseCamera() async {
    final ImagePicker picker = ImagePicker();

    XFile? result = await picker.pickImage(
      source: ImageSource.gallery,
      maxHeight: 816.0,
      maxWidth: 612.0,
      imageQuality: 90,
    );

    return result;
  }
}
