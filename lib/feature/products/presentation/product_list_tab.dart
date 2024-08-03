import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/constants/color/color_constant.dart';
import '../../../core/constants/image/image_constant.dart';
import '../../../core/constants/utils/size_utils.dart';
import '../../../core/helper/layout_helper.dart';
import '../../../core/helper/loader_helper.dart';
import '../../../core/navigation/route.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../injection_container.dart';
import '../../../pages/data_notfound.dart';
import '../../../widgets/appbar/custom_app_bar.dart';
import '../../../widgets/custom_image.dart';
import '../../../widgets/drawer/drawer.dart';
import '../../home_screen/presentation/cubit/home_screen_cubit.dart';

class ProductListTab extends StatefulWidget {
  const ProductListTab({super.key});

  @override
  State<ProductListTab> createState() => _ProductListTabState();
}

class _ProductListTabState extends State<ProductListTab> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool dataLoaded = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: BlocProvider(
        create: (context) =>
            getIt<HomeScreenCubit>()..productDetailListDetails(),
        child: Scaffold(
          drawer: const LeftMenuOneDraweritem(),
          key: _scaffoldKey,
          backgroundColor: ColorConstant.whiteA700,
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(150.0),
              child: CustomAppBarSearch(
                title: 'Product List',
                backbutton: false,
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
              )),
          body: Stack(
            children: [
              BlocConsumer<HomeScreenCubit, HomeScreenState>(
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
                    loading: () => Loader.loadingIndicatorDefault(true),
                    loaded: (
                      responseData,
                    ) {
                      if (responseData!.status_code == '200') {
                        return RefreshIndicator(
                          color: ColorConstant.pink700Primary.withOpacity(0.1),
                          backgroundColor: Colors.white.withOpacity(0.1),
                          onRefresh: () async {
                            setState(() {
                              dataLoaded = false;
                            });
                            return await context
                                .read<HomeScreenCubit>()
                                .productDetailListDetails()
                                .then((value) {
                              setState(() {
                                dataLoaded = true;
                              });
                            });
                          },
                          child: Column(
                            children: [
                              Expanded(
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: responseData.result!.length,
                                  itemBuilder: (context, int index) {
                                    // return Text(index.toString());
                                    return Align(
                                      alignment: Alignment.center,
                                      child: InkWell(
                                        onTap: () async {
                                          await getIt<AppRouter>().push(
                                              ProductDetailsScreenRoute(
                                                  productid: responseData
                                                      .result![index].product_id
                                                      .toString()));
                                        },
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Container(
                                              alignment: Alignment.center,
                                              height: 100,
                                              width: LayoutHelper.getWidth(
                                                  context,
                                                  fraction: .90),
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
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
                                                              height: 70,
                                                              width: 70,
                                                            ),
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                          width: 20,
                                                        ),
                                                        SizedBox(
                                                          width: LayoutHelper
                                                              .getWidth(context,
                                                                  fraction:
                                                                      .55),
                                                          child: Column(
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Expanded(
                                                                    child: Text(
                                                                        responseData
                                                                            .result![
                                                                                index]
                                                                            .product_title
                                                                            .toString(),
                                                                        maxLines:
                                                                            null,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoMedium15),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                  height: 4),
                                                              Row(
                                                                children: [
                                                                  Expanded(
                                                                      flex: 3,
                                                                      child:
                                                                          Row(
                                                                        children: [
                                                                          Text(
                                                                            'Weight: ',
                                                                            style: TextStyle(
                                                                                color: Colors.grey.shade700,
                                                                                fontWeight: FontWeight.bold,
                                                                                fontSize: 13),
                                                                          ),
                                                                          Text(
                                                                              responseData.result![index].weight_gsm.toString(),
                                                                              style: TextStyle(color: Colors.black, fontSize: 13))
                                                                        ],
                                                                      )),
                                                                  Expanded(
                                                                      flex: 3,
                                                                      child:
                                                                          Row(
                                                                        children: [
                                                                          Text(
                                                                            'Width: ',
                                                                            style: TextStyle(
                                                                                color: Colors.grey.shade700,
                                                                                fontWeight: FontWeight.bold,
                                                                                fontSize: 13),
                                                                          ),
                                                                          Text(
                                                                              responseData.result![index].width.toString(),
                                                                              style: TextStyle(color: Colors.black, fontSize: 13))
                                                                        ],
                                                                      )),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                  height: 2),
                                                              Row(
                                                                children: [
                                                                  Expanded(
                                                                      child:
                                                                          Row(
                                                                    children: [
                                                                      Text(
                                                                        'Yarn: ',
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.grey.shade700,
                                                                            fontWeight: FontWeight.bold,
                                                                            fontSize: 13),
                                                                      ),
                                                                      Text(
                                                                          responseData
                                                                              .result![
                                                                                  index]
                                                                              .yarnCatName
                                                                              .toString(),
                                                                          style: TextStyle(
                                                                              color: Colors.black,
                                                                              fontSize: 13))
                                                                    ],
                                                                  )),
                                                                ],
                                                              ),
                                                              // Row(
                                                              //   children: [
                                                              //     Expanded(
                                                              //         child: Text(
                                                              //             responseData
                                                              //                 .result![
                                                              //                     index]
                                                              //                 .product_description
                                                              //                 .toString(),
                                                              //             maxLines:
                                                              //                 2,
                                                              //             overflow: TextOverflow
                                                              //                 .ellipsis,
                                                              //             textAlign: TextAlign
                                                              //                 .left,
                                                              //             style:
                                                              //                 AppStyle.txtRobotoRegular12Gray700))
                                                              //   ],
                                                              // ),
                                                              // Row(
                                                              //   children: [
                                                              //     Expanded(
                                                              //         child: Text(
                                                              //             'Category Type:  ${responseData.result![index].categoryTitle}',
                                                              //             maxLines:
                                                              //                 2,
                                                              //             overflow: TextOverflow
                                                              //                 .ellipsis,
                                                              //             textAlign: TextAlign
                                                              //                 .left,
                                                              //             style: TextStyle(
                                                              //                 color: ColorConstant.gray600,
                                                              //                 fontWeight: FontWeight.w400,
                                                              //                 fontSize: 13)))
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
                              ),
                            ],
                          ),
                        );
                      } else {
                        return const DataNotFoundPage();
                      }
                    },
                    orElse: () => Container(),
                    failure: () => const DataNotFoundPage());
              }),
              if (!dataLoaded) Loader.loadingIndicatorDefault(true)
            ],
          ),

          // body: SingleChildScrollView(
          //   child: Column(children: [
          //     const SizedBox(height: 10),
          //     Align(
          //       alignment: Alignment.center,
          //       child: Card(
          //         shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(20)),
          //         child: Container(
          //             alignment: Alignment.center,
          //             height: 100,
          //             width: LayoutHelper.getWidth(context, fraction: .90),
          //             child: Column(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 crossAxisAlignment: CrossAxisAlignment.center,
          //                 children: [
          //                   Row(
          //                     mainAxisAlignment: MainAxisAlignment.start,
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       const SizedBox(
          //                         width: 10,
          //                       ),
          //                       Column(
          //                         children: [
          //                           CustomImageView(
          //                             imagePath:
          //                                 ImageConstant.imgUnsplashk4cvkfs5cta,
          //                             height: 70,
          //                             width: 70,
          //                           ),
          //                         ],
          //                       ),
          //                       const SizedBox(
          //                         width: 20,
          //                       ),
          //                       SizedBox(
          //                         width: LayoutHelper.getWidth(context,
          //                             fraction: .60),
          //                         child: Column(
          //                           children: [
          //                             Row(
          //                               children: [
          //                                 Expanded(
          //                                   child: Text(
          //                                       "Weaving 16s Carded Warp Ring Frame by ",
          //                                       maxLines: null,
          //                                       textAlign: TextAlign.left,
          //                                       style:
          //                                           AppStyle.txtRobotoMedium15),
          //                                 ),
          //                               ],
          //                             ),
          //                             Row(
          //                               children: [
          //                                 Expanded(
          //                                     child: Text(
          //                                         "Lorem ipsum dolor sit amet, consectetur badipiscing elit, sed do...",
          //                                         overflow: TextOverflow.ellipsis,
          //                                         textAlign: TextAlign.left,
          //                                         style: AppStyle
          //                                             .txtRobotoRegular12Gray700))
          //                               ],
          //                             )
          //                           ],
          //                         ),
          //                       ),
          //                       const SizedBox(
          //                         width: 10,
          //                       ),
          //                     ],
          //                   )
          //                 ])),
          //       ),
          //     ),
          //     const SizedBox(height: 10),
          //     Align(
          //       alignment: Alignment.center,
          //       child: Card(
          //         shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(20)),
          //         child: Container(
          //             alignment: Alignment.center,
          //             height: 100,
          //             width: LayoutHelper.getWidth(context, fraction: .90),
          //             child: Column(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 crossAxisAlignment: CrossAxisAlignment.center,
          //                 children: [
          //                   Row(
          //                     mainAxisAlignment: MainAxisAlignment.start,
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       const SizedBox(
          //                         width: 10,
          //                       ),
          //                       Column(
          //                         children: [
          //                           CustomImageView(
          //                             imagePath:
          //                                 ImageConstant.imgUnsplashk4cvkfs5cta,
          //                             height: 70,
          //                             width: 70,
          //                           ),
          //                         ],
          //                       ),
          //                       const SizedBox(
          //                         width: 20,
          //                       ),
          //                       SizedBox(
          //                         width: LayoutHelper.getWidth(context,
          //                             fraction: .60),
          //                         child: Column(
          //                           children: [
          //                             Row(
          //                               children: [
          //                                 Expanded(
          //                                   child: Text(
          //                                       "Weaving 16s Carded Warp Ring Frame by ",
          //                                       maxLines: null,
          //                                       textAlign: TextAlign.left,
          //                                       style:
          //                                           AppStyle.txtRobotoMedium15),
          //                                 ),
          //                               ],
          //                             ),
          //                             Row(
          //                               children: [
          //                                 Expanded(
          //                                     child: Text(
          //                                         "Lorem ipsum dolor sit amet, consectetur badipiscing elit, sed do...",
          //                                         overflow: TextOverflow.ellipsis,
          //                                         textAlign: TextAlign.left,
          //                                         style: AppStyle
          //                                             .txtRobotoRegular12Gray700))
          //                               ],
          //                             )
          //                           ],
          //                         ),
          //                       ),
          //                       const SizedBox(
          //                         width: 10,
          //                       ),
          //                     ],
          //                   )
          //                 ])),
          //       ),
          //     ),
          //     const SizedBox(height: 20),
          //     Align(
          //       alignment: Alignment.center,
          //       child: Card(
          //         shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(20)),
          //         child: Container(
          //             alignment: Alignment.center,
          //             height: 100,
          //             width: LayoutHelper.getWidth(context, fraction: .90),
          //             child: Column(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 crossAxisAlignment: CrossAxisAlignment.center,
          //                 children: [
          //                   Row(
          //                     mainAxisAlignment: MainAxisAlignment.start,
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       const SizedBox(
          //                         width: 10,
          //                       ),
          //                       Column(
          //                         children: [
          //                           CustomImageView(
          //                             imagePath:
          //                                 ImageConstant.imgUnsplashk4cvkfs5cta,
          //                             height: 70,
          //                             width: 70,
          //                           ),
          //                         ],
          //                       ),
          //                       const SizedBox(
          //                         width: 20,
          //                       ),
          //                       SizedBox(
          //                         width: LayoutHelper.getWidth(context,
          //                             fraction: .60),
          //                         child: Column(
          //                           children: [
          //                             Row(
          //                               children: [
          //                                 Expanded(
          //                                   child: Text(
          //                                       "Weaving 16s Carded Warp Ring Frame by ",
          //                                       maxLines: null,
          //                                       textAlign: TextAlign.left,
          //                                       style:
          //                                           AppStyle.txtRobotoMedium15),
          //                                 ),
          //                               ],
          //                             ),
          //                             Row(
          //                               children: [
          //                                 Expanded(
          //                                     child: Text(
          //                                         "Lorem ipsum dolor sit amet, consectetur badipiscing elit, sed do...",
          //                                         overflow: TextOverflow.ellipsis,
          //                                         textAlign: TextAlign.left,
          //                                         style: AppStyle
          //                                             .txtRobotoRegular12Gray700))
          //                               ],
          //                             )
          //                           ],
          //                         ),
          //                       ),
          //                       const SizedBox(
          //                         width: 10,
          //                       ),
          //                     ],
          //                   )
          //                 ])),
          //       ),
          //     ),
          //     const SizedBox(height: 20),
          //     Align(
          //       alignment: Alignment.center,
          //       child: Card(
          //         shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(20)),
          //         child: Container(
          //             alignment: Alignment.center,
          //             height: 100,
          //             width: LayoutHelper.getWidth(context, fraction: .90),
          //             child: Column(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 crossAxisAlignment: CrossAxisAlignment.center,
          //                 children: [
          //                   Row(
          //                     mainAxisAlignment: MainAxisAlignment.start,
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       const SizedBox(
          //                         width: 10,
          //                       ),
          //                       Column(
          //                         children: [
          //                           CustomImageView(
          //                             imagePath:
          //                                 ImageConstant.imgUnsplashk4cvkfs5cta,
          //                             height: 70,
          //                             width: 70,
          //                           ),
          //                         ],
          //                       ),
          //                       const SizedBox(
          //                         width: 20,
          //                       ),
          //                       SizedBox(
          //                         width: LayoutHelper.getWidth(context,
          //                             fraction: .60),
          //                         child: Column(
          //                           children: [
          //                             Row(
          //                               children: [
          //                                 Expanded(
          //                                   child: Text(
          //                                       "Weaving 16s Carded Warp Ring Frame by ",
          //                                       maxLines: null,
          //                                       textAlign: TextAlign.left,
          //                                       style:
          //                                           AppStyle.txtRobotoMedium15),
          //                                 ),
          //                               ],
          //                             ),
          //                             Row(
          //                               children: [
          //                                 Expanded(
          //                                     child: Text(
          //                                         "Lorem ipsum dolor sit amet, consectetur badipiscing elit, sed do...",
          //                                         overflow: TextOverflow.ellipsis,
          //                                         textAlign: TextAlign.left,
          //                                         style: AppStyle
          //                                             .txtRobotoRegular12Gray700))
          //                               ],
          //                             )
          //                           ],
          //                         ),
          //                       ),
          //                       const SizedBox(
          //                         width: 10,
          //                       ),
          //                     ],
          //                   )
          //                 ])),
          //       ),
          //     ),
          //     const SizedBox(height: 20),
          //     Align(
          //       alignment: Alignment.center,
          //       child: Card(
          //         shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(20)),
          //         child: Container(
          //             alignment: Alignment.center,
          //             height: 100,
          //             width: LayoutHelper.getWidth(context, fraction: .90),
          //             child: Column(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 crossAxisAlignment: CrossAxisAlignment.center,
          //                 children: [
          //                   Row(
          //                     mainAxisAlignment: MainAxisAlignment.start,
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       const SizedBox(
          //                         width: 10,
          //                       ),
          //                       Column(
          //                         children: [
          //                           CustomImageView(
          //                             imagePath:
          //                                 ImageConstant.imgUnsplashk4cvkfs5cta,
          //                             height: 70,
          //                             width: 70,
          //                           ),
          //                         ],
          //                       ),
          //                       const SizedBox(
          //                         width: 20,
          //                       ),
          //                       SizedBox(
          //                         width: LayoutHelper.getWidth(context,
          //                             fraction: .60),
          //                         child: Column(
          //                           children: [
          //                             Row(
          //                               children: [
          //                                 Expanded(
          //                                   child: Text(
          //                                       "Weaving 16s Carded Warp Ring Frame by ",
          //                                       maxLines: null,
          //                                       textAlign: TextAlign.left,
          //                                       style:
          //                                           AppStyle.txtRobotoMedium15),
          //                                 ),
          //                               ],
          //                             ),
          //                             Row(
          //                               children: [
          //                                 Expanded(
          //                                     child: Text(
          //                                         "Lorem ipsum dolor sit amet, consectetur badipiscing elit, sed do...",
          //                                         overflow: TextOverflow.ellipsis,
          //                                         textAlign: TextAlign.left,
          //                                         style: AppStyle
          //                                             .txtRobotoRegular12Gray700))
          //                               ],
          //                             )
          //                           ],
          //                         ),
          //                       ),
          //                       const SizedBox(
          //                         width: 10,
          //                       ),
          //                     ],
          //                   )
          //                 ])),
          //       ),
          //     ),
          //     const SizedBox(height: 20),
          //   ]),
          // ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: ColorConstant.pink700Primary,
            child: const Icon(Icons.message_outlined),
          ),
        ),
      ),
    );
  }
}
