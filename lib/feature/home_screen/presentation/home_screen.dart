import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gerywhite/core/helper/layout_helper.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/constants/color/color_constant.dart';
import '../../../core/constants/image/image_constant.dart';
import '../../../core/constants/utils/size_utils.dart';
import '../../../core/helper/loader_helper.dart';
import '../../../core/navigation/route.dart';
import '../../../core/theme/app_decoration.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../injection_container.dart';
import '../../../pages/data_notfound.dart';
import '../../../widgets/custom_image.dart';
import '../../../widgets/drawer/drawer.dart';
import 'cubit/home_screen_cubit.dart';
import 'list_bg.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool dataLoaded = false;
  @override
  void initState() {
    super.initState();
    // getImage();
  }

  // getImage() {
  //   var data = getIt<SharedPreferences>().getString('image') ?? '0';
  //   print(data);
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: BlocProvider(
          create: (context) =>
              getIt<HomeScreenCubit>()..productDetailListDetails(),
          child: Scaffold(
            key: _scaffoldKey,
            backgroundColor: Color.fromARGB(196, 250, 246, 246),
            drawer: const LeftMenuOneDraweritem(),
            body: SafeArea(
              left: false,
              top: false,
              right: false,
              bottom: false,
              child: Stack(
                children: [
                  ClipPath(
                      clipper: ProsteThirdOrderBezierCurve(
                        position: ClipPosition.bottom,
                        list: [
                          ThirdOrderBezierCurveSection(
                            p1: const Offset(180, 380),
                            p2: const Offset(90, 120),
                            p3: Offset(MediaQuery.of(context).size.width, 200),
                            p4: Offset(MediaQuery.of(context).size.width, 120),
                          ),
                        ],
                      ),
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                            gradient: ColorConstant.gradientColor),
                        // decoration: const BoxDecoration(
                        //   color: Color.fromARGB(255, 3, 43, 102),
                        // ),
                      )),
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                    SizedBox(
                      height: 168,
                      width: size.width,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 90,
                            width:
                                LayoutHelper.getWidth(context, fraction: .95),
                            child: Row(children: [
                              InkWell(
                                onTap: () {
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
                              Image.asset(
                                ImageConstant.imgLayer1,
                                height: 35,
                                width: 35,
                              ),
                              const SizedBox(width: 10),
                              Text("The Gray White",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtLatoBold12
                                      .copyWith(fontSize: 15)),
                              const Spacer(),
                              // getIt<SharedPreferences>().getString('image') ==
                              //             null ||
                              //         getIt<SharedPreferences>()
                              //             .getString('image')!
                              //             .isEmpty
                              //     ? const Icon(
                              //         Icons.image_not_supported,
                              //         color: Colors.white,
                              //         size: 25,
                              //       )
                              //     : ClipRRect(
                              //         borderRadius: const BorderRadius.all(
                              //             Radius.circular(100.0)),
                              //         child: Image.memory(
                              //           base64Decode(
                              //             getIt<SharedPreferences>()
                              //                     .getString('image') ??
                              //                 '',
                              //           ),
                              //           height: 30,
                              //           width: 30,
                              //         ),
                              //       ),
                              const SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () async {
                                  await getIt<AppRouter>()
                                      .push(const NotificationScreenRoute());
                                },
                                child: SvgPicture.asset(
                                  ImageConstant.imgNotification,
                                  height: 25,
                                  width: 25,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ]),
                          ),
                          Container(
                              width:
                                  LayoutHelper.getWidth(context, fraction: .85),
                              height: 40,
                              decoration: AppDecoration.txtOutlineGray50026
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.txtRoundedBorder10),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Search fabric name",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRegular14Gray400),
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Expanded(
                        child: SingleChildScrollView(
                          child: BlocConsumer<HomeScreenCubit, HomeScreenState>(
                              listener: (context, state) {
                            state.maybeWhen(
                                loaded: (data) => {
                                      setState(() {
                                        dataLoaded = true;
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
                                loading: () =>
                                    Loader.loadingIndicatorDefault(true),
                                loaded: (
                                  responseData,
                                ) {
                                  if (responseData!.status_code == '200') {
                                    return Column(
                                      children: [
                                        Container(
                                          width: LayoutHelper.getWidth(context,
                                              fraction: .90),
                                          height: 70,
                                          child: InkWell(
                                            onTap: () async {
                                              await getIt<AppRouter>().push(
                                                  PostFabricRequirementScreenRoute());
                                            },
                                            child: Card(
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0),
                                                      child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgTicket,
                                                        height: 35,
                                                        width: 34,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "Post Fabric Requirement",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoMedium14Pink700),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 2),
                                                                child: Text(
                                                                    "Send requirements to Indian mills",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular10))
                                                          ]),
                                                    ),
                                                    const Spacer(),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowrightPink700,
                                                        height: 20.00,
                                                        width: 20.00),
                                                    const SizedBox(
                                                      width: 10,
                                                    )
                                                  ]),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          color: Colors.white,
                                          width: double.infinity,
                                          height: 120,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0, right: 8.0),
                                            child: SizedBox(
                                                height: 120,
                                                width: LayoutHelper.getWidth(
                                                    context,
                                                    fraction: .90),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                SizedBox(
                                                                    height: 10),
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left: 15),
                                                                  child: Row(
                                                                      children: [
                                                                        Text(
                                                                            "Fabric Composition",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoMedium15),
                                                                        // InkWell(
                                                                        //   onTap:
                                                                        //       () async {
                                                                        //     await getIt<
                                                                        //             AppRouter>()
                                                                        //         .push(
                                                                        //             const PolyesterRoute());
                                                                        //   },
                                                                        //   child: Padding(
                                                                        //       padding: getPadding(
                                                                        //           left:
                                                                        //               212,
                                                                        //           bottom:
                                                                        //               2),
                                                                        //       child: Text(
                                                                        //           "See All",
                                                                        //           overflow:
                                                                        //               TextOverflow
                                                                        //                   .ellipsis,
                                                                        //           textAlign:
                                                                        //               TextAlign
                                                                        //                   .left,
                                                                        //           style: AppStyle
                                                                        //               .txtRobotoRegular12
                                                                        //               .copyWith(decoration: TextDecoration.underline))),
                                                                        // )
                                                                      ]),
                                                                ),
                                                                SizedBox(
                                                                    height: 10),
                                                                SizedBox(
                                                                    height: 70,
                                                                    child: ListView.separated(
                                                                        padding: getPadding(top: 3),
                                                                        scrollDirection: Axis.horizontal,
                                                                        physics: const BouncingScrollPhysics(),
                                                                        separatorBuilder: (context, index) {
                                                                          return SizedBox(
                                                                              height: getVerticalSize(10.00));
                                                                        },
                                                                        itemCount: 7,
                                                                        itemBuilder: (context, index) {
                                                                          return ListbgItemWidget();
                                                                        }))
                                                              ]))
                                                    ])),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 22.0,
                                          ),
                                          child: Row(
                                            children: [
                                              Text("Our Products",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium15),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        ListView.builder(
                                          padding: EdgeInsets
                                              .zero, // Set padding to zero
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount:
                                              responseData.result!.length,
                                          itemBuilder: (context, int index) {
                                            // return Text(index.toString());
                                            return Align(
                                              alignment: Alignment.center,
                                              child: InkWell(
                                                onTap: () async {
                                                  // ProductDetailsScreen
                                                  await getIt<AppRouter>().push(
                                                      ProductDetailsScreenRoute(
                                                          productid:
                                                              responseData
                                                                  .result![
                                                                      index]
                                                                  .product_id
                                                                  .toString()));
                                                },
                                                child: Card(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      height: 90,
                                                      width:
                                                          LayoutHelper.getWidth(
                                                              context,
                                                              fraction: .90),
                                                      child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                const SizedBox(
                                                                  width: 10,
                                                                ),
                                                                Column(
                                                                  children: [
                                                                    CustomImageView(
                                                                      url:
                                                                          'https://demos.thewebdemo.net/graywhite-dev/${responseData.result![index].image_title}',
                                                                      height:
                                                                          70,
                                                                      width: 70,
                                                                    ),
                                                                  ],
                                                                ),
                                                                const SizedBox(
                                                                  width: 20,
                                                                ),
                                                                SizedBox(
                                                                  width: LayoutHelper
                                                                      .getWidth(
                                                                          context,
                                                                          fraction:
                                                                              .55),
                                                                  child: Column(
                                                                    children: [
                                                                      Row(
                                                                        children: [
                                                                          Expanded(
                                                                            child: Text(responseData.result![index].product_title.toString(),
                                                                                maxLines: null,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtRobotoMedium15),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      SizedBox(
                                                                          height:
                                                                              4),
                                                                      Row(
                                                                        children: [
                                                                          Expanded(
                                                                              flex: 3,
                                                                              child: Row(
                                                                                children: [
                                                                                  Text(
                                                                                    'Weight: ',
                                                                                    style: TextStyle(color: Colors.grey.shade700, fontWeight: FontWeight.bold, fontSize: 13),
                                                                                  ),
                                                                                  Text(responseData.result![index].weight_gsm.toString(), style: TextStyle(color: Colors.black, fontSize: 13))
                                                                                ],
                                                                              )),
                                                                          Expanded(
                                                                              flex: 3,
                                                                              child: Row(
                                                                                children: [
                                                                                  Text(
                                                                                    'Width: ',
                                                                                    style: TextStyle(color: Colors.grey.shade700, fontWeight: FontWeight.bold, fontSize: 13),
                                                                                  ),
                                                                                  Text(responseData.result![index].width.toString(), style: TextStyle(color: Colors.black, fontSize: 13))
                                                                                ],
                                                                              )),
                                                                        ],
                                                                      ),
                                                                      SizedBox(
                                                                          height:
                                                                              2),
                                                                      Row(
                                                                        children: [
                                                                          Expanded(
                                                                              child: Row(
                                                                            children: [
                                                                              Text(
                                                                                'Yarn: ',
                                                                                style: TextStyle(color: Colors.grey.shade700, fontWeight: FontWeight.bold, fontSize: 13),
                                                                              ),
                                                                              Text(responseData.result![index].yarnCatName.toString(), style: TextStyle(color: Colors.black, fontSize: 13))
                                                                            ],
                                                                          )),
                                                                        ],
                                                                      ),
                                                                      // Row(
                                                                      //   children: [
                                                                      //     Expanded(
                                                                      //         child: Text('Category Type:  ${responseData.result![index].categoryTitle}', maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: TextStyle(color: ColorConstant.gray600, fontWeight: FontWeight.w400, fontSize: 13)))
                                                                      //   ],
                                                                      // )
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
                                            );
                                          },
                                        ),
                                      ],
                                    );
                                  } else {
                                    return const DataNotFoundPage();
                                  }
                                },
                                orElse: () => Container(),
                                failure: () => const DataNotFoundPage());
                          }),
                        ),
                      ),
                    )
                  ]),
                  if (!dataLoaded) Loader.loadingIndicatorDefault(true)
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              backgroundColor: ColorConstant.pink700Primary,
              child: const Icon(Icons.message_outlined),
            ),
          ),
        ));
  }

  onTapMenu(BuildContext context) {
    _scaffoldKey.currentState?.openDrawer();
  }
}
