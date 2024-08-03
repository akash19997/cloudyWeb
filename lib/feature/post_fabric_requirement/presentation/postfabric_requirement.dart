// ignore_for_file: must_be_immutable

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gerywhite/widgets/appbar/custom_app_bar.dart';
import '../../../core/constants/color/color_constant.dart';
import '../../../core/constants/enum/custom_app_button_enum.dart';
import '../../../core/constants/image/image_constant.dart';
import '../../../core/constants/utils/size_utils.dart';
import '../../../core/theme/app_decoration.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image.dart';
import '../../../widgets/custom_text_formfield.dart';

class PostFabricRequirementScreen extends StatelessWidget {
  TextEditingController emailfieldController = TextEditingController();

  TextEditingController emailfieldOneController = TextEditingController();

  TextEditingController emailfieldTwoController = TextEditingController();

  TextEditingController emailfieldThreeController = TextEditingController();

  TextEditingController emailfieldFourController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  PostFabricRequirementScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: ColorConstant.whiteA700,
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(65.0),
              child: CustomAppBar(
                backbutton: true,
                title: 'Post Fabric Requirement ',
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )),
          body: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Container(
                    width: size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            Container(
                                width: 350,
                                height: 80,
                                decoration: AppDecoration.outlinePink7001
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                child: DottedBorder(
                                    color: ColorConstant.pink700Primary,
                                    padding: const EdgeInsets.only(
                                        left: 1, top: 1, right: 1, bottom: 1),
                                    strokeWidth: 1,
                                    radius: const Radius.circular(8),
                                    borderType: BorderType.RRect,
                                    dashPattern: [10, 8],
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10.0,
                                          left: 20,
                                          right: 10,
                                          bottom: 10),
                                      child: Row(children: [
                                        SvgPicture.asset(
                                            ImageConstant.imgFrame),
                                        const SizedBox(width: 10),
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("Upload Image",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium12),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text("Choose your file here",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtRobotoLight12)
                                            ])
                                      ]),
                                    ))),
                            const SizedBox(height: 20),
                            Text(
                              "Fabric Design Number",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14,
                            ),
                            const SizedBox(height: 5),
                            const CustomFormField(
                              hintText: "Enter fabric design number",
                              width: 350,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "Product quality",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14,
                            ),
                            const SizedBox(height: 5),
                            const CustomFormField(
                              hintText: "Enter Product quality",
                              width: 350,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "Product quantity",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14,
                            ),
                            const SizedBox(height: 5),
                            const CustomFormField(
                              hintText: "Enter product quantity",
                              width: 350,
                            ),
                            Padding(
                                padding: getPadding(top: 13),
                                child: Text("Colors",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoMedium15Gray800)),
                            CustomImageView(
                                svgPath: ImageConstant.imgGroup6827,
                                height: getVerticalSize(30.00),
                                width: getHorizontalSize(310.00),
                                margin: getMargin(top: 9)),
                            const SizedBox(height: 20),
                            Text(
                              "Delivery period",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14,
                            ),
                            const SizedBox(height: 5),
                            const CustomFormField(
                              hintText: "Enter Delivery period",
                              width: 350,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "Comment (Optional)",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14,
                            ),
                            const SizedBox(height: 5),
                            const CustomFormField(
                              hintText: "Enter comment",
                              width: 350,
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
                                  onPressed: () async {},
                                ),
                              ],
                            ),
                            const SizedBox(height: 50)
                          ]),
                    )),
              )),
        ));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
