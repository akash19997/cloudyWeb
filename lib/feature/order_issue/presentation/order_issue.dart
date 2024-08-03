import 'package:flutter/material.dart';
import 'package:gerywhite/core/helper/layout_helper.dart';
import '../../../core/constants/color/color_constant.dart';
import '../../../core/constants/image/image_constant.dart';
import '../../../core/constants/utils/size_utils.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../widgets/appbar/custom_app_bar.dart';
import '../../../widgets/custom_check_box.dart';
import '../../../widgets/custom_image.dart';
import '../../../widgets/custom_text_formfield.dart';

class OrderIssueScreen extends StatefulWidget {
  const OrderIssueScreen({super.key});

  @override
  State<OrderIssueScreen> createState() => _OrderIssueScreenState();
}

class _OrderIssueScreenState extends State<OrderIssueScreen> {
  bool checkbox = false;

  bool checkbox1 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: ColorConstant.gray5001,
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(65.0),
              child: CustomAppBar(
                title: 'Order Issue',
                backbutton: true,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )),
          body: SizedBox(
              width: size.width,
              child: Column(children: [
                const SizedBox(
                  height: 20,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SizedBox(
                      width: LayoutHelper.getWidth(context, fraction: .95),
                      child: Stack(alignment: Alignment.topRight, children: [
                        Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: getPadding(top: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgUnsplashk4cvkfs5cta,
                                            height: 70,
                                            width: 70,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                              "Weaving 16s Carded Warp Ring\nFrame by ",
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtRobotoMedium15),
                                          Text(
                                              "Lorem ipsum dolor sit amet, consectetur \u000badipiscing elit, sed do...",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRegular12Gray700)
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Text("Why are you retuning this ?",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoBold14Gray90002),
                                        CustomCheckbox(
                                            text:
                                                "Both product and shipping box damaged",
                                            iconSize: 15,
                                            value: checkbox,
                                            onChange: (value) {
                                              setState(() {
                                                checkbox1 = value;
                                              });
                                            }),
                                        CustomCheckbox(
                                            text:
                                                "Both product and shipping box damaged",
                                            iconSize: 15,
                                            value: checkbox,
                                            onChange: (value) {
                                              setState(() {
                                                checkbox1 = value;
                                              });
                                            }),
                                        CustomCheckbox(
                                            text: "Other",
                                            iconSize: 15,
                                            value: checkbox,
                                            onChange: (value) {
                                              setState(() {
                                                checkbox1 = value;
                                              });
                                            }),
                                        const CustomFormField(
                                          hintText: "Enter remark",
                                          width: 350,
                                          prefixIcon: Padding(
                                            padding: EdgeInsets.all(12.0),
                                          ),
                                        ),
                                        const SizedBox(height: 40),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ])),
                ),
                const SizedBox(height: 15),
                // Column(
                //   children: [
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         AppButton(
                //           withoutIcon: false,
                //           buttonWidth: 170,
                //           buttonType: AppButtonType.OUTLINE,
                //           child: Text(
                //             'Order Issue',
                //             style: AppStyle.txtRobotoRegular14
                //                 .copyWith(color: ColorConstant.pink700Primary),
                //           ),
                //           onPressedOutline: () async {
                //             await getIt<AppRouter>()
                //                 .push(const TrackOrdersScreenRoute());
                //           },
                //         ),
                //         AppButton(
                //           buttonWidth: 170,
                //           buttonType: AppButtonType.PRIMARY,
                //           child: Text(
                //             'Download Invoice',
                //             style: AppStyle.txtRobotoRegular14,
                //           ),
                //           onPressed: () async {
                //             await getIt<AppRouter>()
                //                 .push(const TrackOrdersScreenRoute());
                //           },
                //         ),
                //       ],
                //     ),
                //   ],
                // ),
                const SizedBox(height: 50)
              ])),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: ColorConstant.pink700Primary,
            child: const Icon(Icons.message_outlined),
          ),
        ));
  }

  onTapArrowleft7(BuildContext context) {
    Navigator.pop(context);
  }
}
