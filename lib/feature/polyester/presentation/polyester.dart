import 'package:flutter/material.dart';
import '../../../core/constants/color/color_constant.dart';
import '../../../core/constants/image/image_constant.dart';
import '../../../core/helper/layout_helper.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../widgets/appbar/custom_app_bar.dart';
import '../../../widgets/custom_image.dart';

class Polyester extends StatefulWidget {
  const Polyester({super.key});

  @override
  State<Polyester> createState() => _PolyesterState();
}

class _PolyesterState extends State<Polyester> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(150.0),
            child: CustomAppBarSearch(
              title: 'Polyester ',
              backbutton: true,
              onPressed: () {
                Navigator.of(context).pop();
              },
            )),
        body: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: LayoutHelper.getWidth(context, fraction: .90),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgUnsplashk4cvkfs5cta,
                                    height: 70,
                                    width: 70,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                width: LayoutHelper.getWidth(context,
                                    fraction: .60),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                              "Weaving 16s Carded Warp Ring Frame by ",
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtRobotoMedium15),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                            child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur badipiscing elit, sed do...",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular12Gray700))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          )
                        ])),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: LayoutHelper.getWidth(context, fraction: .90),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgUnsplashk4cvkfs5cta,
                                    height: 70,
                                    width: 70,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                width: LayoutHelper.getWidth(context,
                                    fraction: .60),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                              "Weaving 16s Carded Warp Ring Frame by ",
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtRobotoMedium15),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                            child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur badipiscing elit, sed do...",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular12Gray700))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          )
                        ])),
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: LayoutHelper.getWidth(context, fraction: .90),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgUnsplashk4cvkfs5cta,
                                    height: 70,
                                    width: 70,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                width: LayoutHelper.getWidth(context,
                                    fraction: .60),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                              "Weaving 16s Carded Warp Ring Frame by ",
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtRobotoMedium15),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                            child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur badipiscing elit, sed do...",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular12Gray700))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          )
                        ])),
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: LayoutHelper.getWidth(context, fraction: .90),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgUnsplashk4cvkfs5cta,
                                    height: 70,
                                    width: 70,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                width: LayoutHelper.getWidth(context,
                                    fraction: .60),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                              "Weaving 16s Carded Warp Ring Frame by ",
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtRobotoMedium15),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                            child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur badipiscing elit, sed do...",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular12Gray700))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          )
                        ])),
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: LayoutHelper.getWidth(context, fraction: .90),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgUnsplashk4cvkfs5cta,
                                    height: 70,
                                    width: 70,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                width: LayoutHelper.getWidth(context,
                                    fraction: .60),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                              "Weaving 16s Carded Warp Ring Frame by ",
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtRobotoMedium15),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                            child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur badipiscing elit, sed do...",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular12Gray700))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          )
                        ])),
              ),
            ),
            const SizedBox(height: 20),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: ColorConstant.pink700Primary,
          child: const Icon(Icons.message_outlined),
        ),
      ),
    );
  }
}
