import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gerywhite/core/navigation/route.dart';
import 'package:gerywhite/injection_container.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/constants/color/color_constant.dart';
import '../../../core/constants/image/image_constant.dart';
import '../../../core/constants/utils/size_utils.dart';
import '../../../core/theme/app_decoration.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../widgets/custom_image.dart';
import '../../../widgets/drawer/drawer.dart';

// ignore_for_file: must_be_immutable
class MyAccountPage extends StatefulWidget {
  const MyAccountPage({super.key});

  @override
  State<MyAccountPage> createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String name = '';
  @override
  void initState() {
    getDtailsofUser();
    super.initState();
  }

  getDtailsofUser() async {
    name = getIt<SharedPreferences>().getString('userName') ?? '--';
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        drawer: const LeftMenuOneDraweritem(),
        key: _scaffoldKey,
        backgroundColor: ColorConstant.whiteA700,
        body: SafeArea(
          left: false,
          top: false,
          right: false,
          bottom: false,
          child: Container(
            width: size.width,
            decoration: AppDecoration.fillWhiteA700,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: size.width,
                        padding: getPadding(
                          top: 12,
                          bottom: 12,
                        ),
                        decoration: AppDecoration.outlineBlueA20033.copyWith(
                          gradient: ColorConstant.gradientColor,
                          borderRadius: BorderRadiusStyle.customBorderBL30,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(height: 30),
                            Row(children: [
                              InkWell(
                                onTap: () {
                                  // _scaffoldKey.currentState!.openDrawer();
                                  _scaffoldKey.currentState!.openDrawer();
                                },
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 0.0, left: 10),
                                  child: SvgPicture.asset(
                                    fit: BoxFit.scaleDown,
                                    ImageConstant.imgMenu,
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              // Image.asset(
                              //   ImageConstant.imgLayer1,
                              //   height: 35,
                              //   width: 35,
                              // ),
                              Text("My Account",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtLatoBold12
                                      .copyWith(fontSize: 15)),
                              const SizedBox(width: 10),

                              const Spacer(),
                            ]),
                            Container(
                              height: getVerticalSize(
                                136.00,
                              ),
                              width: getHorizontalSize(
                                121.00,
                              ),
                              margin: getMargin(
                                top: 20,
                                bottom: 9,
                              ),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  getIt<SharedPreferences>()
                                                  .getString('image') ==
                                              null ||
                                          getIt<SharedPreferences>()
                                              .getString('image')!
                                              .isEmpty
                                      ? Icon(
                                          Icons.person,
                                          color: ColorConstant.pink700Primary,
                                          size: 85,
                                        )
                                      : ClipRRect(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(0.0)),
                                          child: Image.memory(
                                            base64Decode(
                                              getIt<SharedPreferences>()
                                                      .getString('image') ??
                                                  '',
                                            ),
                                            height: getVerticalSize(
                                              136.00,
                                            ),
                                            width: getHorizontalSize(
                                              90.00,
                                            ),
                                          ),
                                        ),

                                  // CustomImageView(
                                  //   imagePath: ImageConstant.imgIstockphoto113,
                                  //   height: getVerticalSize(
                                  //     136.00,
                                  //   ),
                                  //   width: getHorizontalSize(
                                  //     90.00,
                                  //   ),
                                  //   alignment: Alignment.center,
                                  // ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: getPadding(
                                        top: 50,
                                        bottom: 0,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          // Text(
                                          //   name,
                                          //   overflow: TextOverflow.ellipsis,
                                          //   textAlign: TextAlign.left,
                                          //   style: AppStyle.txtInterBold15,
                                          // ),
                                          // Padding(
                                          //   padding: getPadding(
                                          //     top: 6,
                                          //   ),
                                          //   child: Text(
                                          //     "Filosha Fibers Pvt Ltd",
                                          //     overflow: TextOverflow.ellipsis,
                                          //     textAlign: TextAlign.left,
                                          //     style: AppStyle
                                          //         .txtInterRegular12WhiteA700a2,
                                          //   ),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 33,
                          top: 25,
                          right: 24,
                        ),
                        child: InkWell(
                          onTap: () async {
                            await getIt<AppRouter>()
                                .push(const MyProfileScreenRoute())
                                .then((value) {
                              setState(() {});
                            });
                            // Navigator.pushNamed(
                            //     context, AppRoutes.filterScreen);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgUserPink700,
                                height: getSize(
                                  22.00,
                                ),
                                width: getSize(
                                  22.00,
                                ),
                                margin: getMargin(
                                  top: 1,
                                  bottom: 1,
                                ),
                              ),
                              InkWell(
                                child: Padding(
                                  padding: getPadding(
                                    left: 15,
                                    top: 3,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "My Profile",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRobotoRegular16Bluegray90001,
                                  ),
                                ),
                              ),
                              Spacer(),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowrightGray500,
                                height: getSize(
                                  24.00,
                                ),
                                width: getSize(
                                  24.00,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          1.00,
                        ),
                        width: getHorizontalSize(
                          327.00,
                        ),
                        margin: getMargin(
                          top: 20,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray20001,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 33,
                          top: 19,
                          right: 24,
                        ),
                        child: InkWell(
                          onTap: () async {
                            await getIt<AppRouter>()
                                .push(const MyEnquiryRoute());
                            // Navigator.pushNamed(
                            //     context, AppRoutes.filterScreen);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgPath7450,
                                height: getSize(
                                  22.00,
                                ),
                                width: getSize(
                                  22.00,
                                ),
                                margin: getMargin(
                                  top: 1,
                                  bottom: 1,
                                ),
                              ),
                              InkWell(
                                child: Padding(
                                  padding: getPadding(
                                    left: 15,
                                    top: 3,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "My Enquiry",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRobotoRegular16Bluegray90001,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowrightGray500,
                                height: getSize(
                                  24.00,
                                ),
                                width: getSize(
                                  24.00,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          1.00,
                        ),
                        width: getHorizontalSize(
                          327.00,
                        ),
                        margin: getMargin(
                          top: 20,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray20001,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 31,
                          top: 19,
                          right: 24,
                        ),
                        child: InkWell(
                          onTap: () async {
                            await getIt<AppRouter>().push(const MyOrderRoute());
                            // Navigator.pushNamed(
                            //     context, AppRoutes.filterScreen);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgBookmark,
                                height: getVerticalSize(
                                  22.00,
                                ),
                                width: getHorizontalSize(
                                  25.00,
                                ),
                                margin: getMargin(
                                  top: 1,
                                  bottom: 1,
                                ),
                              ),
                              InkWell(
                                child: Padding(
                                  padding: getPadding(
                                    left: 14,
                                    top: 3,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "My Orders",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRobotoRegular16Bluegray90001,
                                  ),
                                ),
                              ),
                              Spacer(),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowrightGray500,
                                height: getSize(
                                  24.00,
                                ),
                                width: getSize(
                                  24.00,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          1.00,
                        ),
                        width: getHorizontalSize(
                          327.00,
                        ),
                        margin: getMargin(
                          top: 20,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray20001,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 31,
                          top: 19,
                          right: 24,
                          bottom: 5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgCutPink700,
                              height: getVerticalSize(
                                22.00,
                              ),
                              width: getHorizontalSize(
                                25.00,
                              ),
                              margin: getMargin(
                                top: 1,
                                bottom: 1,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text("Warning!"),
                                      content: const Text(
                                          'Are you sure you want to Logout?'),
                                      actions: <Widget>[
                                        TextButton(
                                          child: const Text(
                                            "Yes",
                                            style: TextStyle(
                                                color: Colors.indigo,
                                                fontSize: 14),
                                          ),
                                          onPressed: () async {
                                            await getIt<SharedPreferences>()
                                                .clear();
                                            await getIt<AppRouter>().replaceAll(
                                                [const WelcomePageRoute()]);
                                          },
                                        ),
                                        TextButton(
                                          child: const Text(
                                            "No",
                                            style: TextStyle(
                                                color: Colors.indigo,
                                                fontSize: 14),
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );

                                // Navigator.pushNamed(
                                //     context, AppRoutes.homeContainerScreen);
                              },
                              child: Padding(
                                padding: getPadding(
                                  left: 14,
                                  top: 3,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "Logout",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtRobotoRegular16Bluegray90001,
                                ),
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowrightGray500,
                              height: getSize(
                                24.00,
                              ),
                              width: getSize(
                                24.00,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   backgroundColor: ColorConstant.pink700Primary,
        //   child: const Icon(Icons.message_outlined),
        // ),
      ),
    );
  }
}
