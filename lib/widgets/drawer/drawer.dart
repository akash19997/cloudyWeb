import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/constants/color/color_constant.dart';
import '../../core/constants/image/image_constant.dart';
import '../../core/constants/utils/size_utils.dart';
import '../../core/navigation/route.dart';
import '../../core/theme/app_decoration.dart';
import '../../core/theme/app_text_theme.dart';
import '../../injection_container.dart';
import '../custom_image.dart';

class LeftMenuOneDraweritem extends StatefulWidget {
  const LeftMenuOneDraweritem({super.key});

  @override
  State<LeftMenuOneDraweritem> createState() => _LeftMenuOneDraweritemState();
}

String name = '--';
String gstNu = '--';

class _LeftMenuOneDraweritemState extends State<LeftMenuOneDraweritem> {
  @override
  void initState() {
    getDetails();
    super.initState();
  }

  Future<void> getDetails() async {
    setState(() {
      name = (getIt<SharedPreferences>().getString('fullName'))!;
      gstNu = (getIt<SharedPreferences>().getString('gstNumber'))!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: AppDecoration.fillWhiteA700,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: getPadding(
                left: 28,
                top: 35,
                right: 28,
                bottom: 35,
              ),
              decoration: AppDecoration.outlineBlueA20033,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Icon(
                  //   Icons.person,
                  //   color: ColorConstant.pink700Primary,
                  //   size: 55,
                  // ),
                  getIt<SharedPreferences>().getString('image') == null ||
                          getIt<SharedPreferences>().getString('image')!.isEmpty
                      ? Icon(
                          Icons.person,
                          color: ColorConstant.pink700Primary,
                          size: 55,
                        )
                      : ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(90.0)),
                          child: Image.memory(
                            base64Decode(
                              getIt<SharedPreferences>().getString('image') ??
                                  '',
                            ),
                            height: 60,
                            width: 60,
                          ),
                        ),
                  Padding(
                    padding: getPadding(
                      left: 10,
                      top: 38,
                      bottom: 11,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  name,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 1,
                            top: 6,
                          ),
                          child: SizedBox(
                            width: 90,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    gstNu,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtInterRegular12WhiteA700a2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: InkWell(
                      onTap: () async {
                        await getIt<AppRouter>()
                            .push(const MyProfileScreenRoute())
                            .then((value) {
                          setState(() {});
                        });
                      },
                      child: CustomImageView(
                        svgPath: ImageConstant.imgArrowright,
                        height: getVerticalSize(
                          25.00,
                        ),
                        width: getHorizontalSize(
                          10.00,
                        ),
                        margin: getMargin(
                          left: 44,
                          top: 66,
                          bottom: 11,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
                  const SizedBox(height: 15),
                  InkWell(
                    onTap: () async {
                      Navigator.of(context).pop();
                      await getIt<AppRouter>().push(const CategoryRoute());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 20),
                        Container(
                          height: 35.00,
                          width: 35.00,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              6.00,
                            ),
                            gradient: LinearGradient(
                              colors: [
                                ColorConstant.blueGray600,
                                ColorConstant.indigo900,
                              ],
                            ),
                          ),
                          child: const Icon(
                            Icons.window_rounded,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Categories",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular16,
                        ),
                        const Spacer(),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowrightPink700,
                        ),
                        const SizedBox(width: 45),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  const SizedBox(width: 270, child: Divider(thickness: 1)),
                  // InkWell(
                  //   onTap: () async {
                  //     Navigator.of(context).pop();
                  //     await getIt<AppRouter>().push(const MyOrderRoute());
                  //   },
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     crossAxisAlignment: CrossAxisAlignment.center,
                  //     children: [
                  //       const SizedBox(width: 20),
                  //       Container(
                  //         height: 35.00,
                  //         width: 35.00,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(
                  //             6.00,
                  //           ),
                  //           gradient: LinearGradient(
                  //             colors: [
                  //               ColorConstant.blueGray600,
                  //               ColorConstant.indigo900,
                  //             ],
                  //           ),
                  //         ),
                  //         child: const Icon(
                  //           Icons.wallet,
                  //           color: Colors.white,
                  //         ),
                  //       ),
                  //       const SizedBox(width: 10),
                  //       Text(
                  //         "My Orders",
                  //         overflow: TextOverflow.ellipsis,
                  //         textAlign: TextAlign.left,
                  //         style: AppStyle.txtRobotoRegular16,
                  //       ),
                  //       const Spacer(),
                  //       CustomImageView(
                  //         svgPath: ImageConstant.imgArrowrightPink700,
                  //       ),
                  //       const SizedBox(width: 45),
                  //     ],
                  //   ),
                  // ),
                  // const SizedBox(height: 15),
                  // const SizedBox(width: 270, child: Divider(thickness: 1)),
                  InkWell(
                    onTap: () async {
                      Navigator.of(context).pop();
                      await getIt<AppRouter>().push(const AboutUsRoute());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 20),
                        Container(
                          height: 35.00,
                          width: 35.00,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              6.00,
                            ),
                            gradient: LinearGradient(
                              colors: [
                                ColorConstant.blueGray600,
                                ColorConstant.indigo900,
                              ],
                            ),
                          ),
                          child: const Icon(
                            Icons.warning,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "About us",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular16,
                        ),
                        const Spacer(),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowrightPink700,
                        ),
                        const SizedBox(width: 45),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  const SizedBox(width: 270, child: Divider(thickness: 1)),
                  InkWell(
                    onTap: () async {
                      Navigator.of(context).pop();
                      await getIt<AppRouter>()
                          .push(const HelpCenterScreenRoute());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 20),
                        Container(
                          height: 35.00,
                          width: 35.00,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              6.00,
                            ),
                            gradient: LinearGradient(
                              colors: [
                                ColorConstant.blueGray600,
                                ColorConstant.indigo900,
                              ],
                            ),
                          ),
                          child: const Icon(
                            Icons.help_center,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Help Center",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular16,
                        ),
                        const Spacer(),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowrightPink700,
                        ),
                        const SizedBox(width: 45),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  const SizedBox(width: 270, child: Divider(thickness: 1)),
                  InkWell(
                    onTap: () async {
                      Navigator.of(context).pop();
                      await getIt<AppRouter>()
                          .push(const TermsAndConditionScreenRoute());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 20),
                        Container(
                          height: 35.00,
                          width: 35.00,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              6.00,
                            ),
                            gradient: LinearGradient(
                              colors: [
                                ColorConstant.blueGray600,
                                ColorConstant.indigo900,
                              ],
                            ),
                          ),
                          child: const Icon(
                            Icons.question_mark_sharp,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Terms & Condition",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular16,
                        ),
                        const Spacer(),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowrightPink700,
                        ),
                        const SizedBox(width: 45),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  const SizedBox(width: 270, child: Divider(thickness: 1)),
                  InkWell(
                    onTap: () async {
                      Navigator.of(context).pop();
                      await getIt<AppRouter>()
                          .push(const PrivacyPolicyScreenRoute());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 20),
                        Container(
                          height: 35.00,
                          width: 35.00,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              6.00,
                            ),
                            gradient: LinearGradient(
                              colors: [
                                ColorConstant.blueGray600,
                                ColorConstant.indigo900,
                              ],
                            ),
                          ),
                          child: const Icon(
                            Icons.join_right,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Privacy Policy",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular16,
                        ),
                        const Spacer(),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowrightPink700,
                        ),
                        const SizedBox(width: 45),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  const SizedBox(width: 270, child: Divider(thickness: 1)),
                  InkWell(
                    onTap: () async {
                      Navigator.of(context).pop();
                      await getIt<AppRouter>().push(const AboutUsRoute());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 20),
                        Container(
                          height: 35.00,
                          width: 35.00,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              6.00,
                            ),
                            gradient: LinearGradient(
                              colors: [
                                ColorConstant.blueGray600,
                                ColorConstant.indigo900,
                              ],
                            ),
                          ),
                          child: const Icon(
                            Icons.join_right,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Return Policy",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular16,
                        ),
                        const Spacer(),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowrightPink700,
                        ),
                        const SizedBox(width: 45),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  const SizedBox(width: 270, child: Divider(thickness: 1)),
                  InkWell(
                    onTap: () async {
                      Navigator.of(context).pop();
                      await getIt<AppRouter>()
                          .push(const ContactUsScreenRoute());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 20),
                        Container(
                          height: 35.00,
                          width: 35.00,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              6.00,
                            ),
                            gradient: LinearGradient(
                              colors: [
                                ColorConstant.blueGray600,
                                ColorConstant.indigo900,
                              ],
                            ),
                          ),
                          child: const Icon(
                            Icons.contact_phone,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Contact us",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular16,
                        ),
                        const Spacer(),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowrightPink700,
                        ),
                        const SizedBox(width: 45),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  const SizedBox(width: 270, child: Divider(thickness: 1)),
                  InkWell(
                    onTap: () async {
                      Navigator.of(context).pop();
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text("Warning!"),
                            content:
                                const Text('Are you sure you want to Logout?'),
                            actions: <Widget>[
                              TextButton(
                                child: const Text(
                                  "Yes",
                                  style: TextStyle(
                                      color: Colors.indigo, fontSize: 14),
                                ),
                                onPressed: () async {
                                  await getIt<SharedPreferences>().clear();
                                  await getIt<AppRouter>()
                                      .replaceAll([const WelcomePageRoute()]);
                                },
                              ),
                              TextButton(
                                child: const Text(
                                  "No",
                                  style: TextStyle(
                                      color: Colors.indigo, fontSize: 14),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 20),
                        Container(
                          height: 35.00,
                          width: 35.00,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              6.00,
                            ),
                            gradient: LinearGradient(
                              colors: [
                                ColorConstant.blueGray600,
                                ColorConstant.indigo900,
                              ],
                            ),
                          ),
                          child: const Icon(
                            Icons.logout,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Logout",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular16,
                        ),
                        const Spacer(),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowrightPink700,
                        ),
                        const SizedBox(width: 45),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
