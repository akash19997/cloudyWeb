// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gerywhite/feature/product_details/presentation/cubit/product_cubit.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stylish_dialog/stylish_dialog.dart';
import '../../../core/constants/color/color_constant.dart';
import '../../../core/constants/enum/custom_app_button_enum.dart';
import '../../../core/constants/image/image_constant.dart';
import '../../../core/constants/utils/size_utils.dart';
import '../../../core/helper/layout_helper.dart';
import '../../../core/helper/loader_helper.dart';
import '../../../core/helper/stylish_dialouge.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../injection_container.dart';
import '../../../pages/data_notfound.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image.dart';
import '../../../widgets/custom_text_formfield.dart';
import '../data/order_enquiry/order_enquiry_req.dart';
import 'package:intl/intl.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../data/response/product_details_resp.dart';

class ProductDetailsScreen extends StatefulWidget {
  final String productid;

  const ProductDetailsScreen({super.key, required this.productid});
  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  void initState() {
    widget.productid;
    super.initState();
  }

  int _currentIndex = 0;
  bool dataLoaded = false;
  ProductDetailsResponse? productDetailsResponse;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        minimum: const EdgeInsets.only(top: 25),
        child: BlocProvider(
          create: (context) => getIt<ProductDetailsCubit>()
            ..productDetailListDetails(id: widget.productid),
          child: Stack(
            children: [
              Scaffold(
                backgroundColor: const Color.fromRGBO(255, 255, 255, 0.94),
                body: BlocConsumer<ProductDetailsCubit, ProductDetailsState>(
                    listener: (context, state) {
                  state.maybeWhen(
                      loaded: (data) => {
                            setState(() {
                              dataLoaded = true;
                              productDetailsResponse = data;
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
                          List<String> imageTitles = responseData
                              .result!.first.product_details!.productImage!
                              .map((product) => product.image_title ?? "")
                              .toList();

                          print(responseData);
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10),
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: ColorConstant.pink700Primary,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10.0)),
                                      ),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.arrow_back_ios_new,
                                            color: Colors.white,
                                            size: 15,
                                          )),
                                    ),
                                  ),
                                ),
                                CarouselSlider(
                                    disableGesture: false,
                                    options: CarouselOptions(
                                      onPageChanged: (index, reason) {
                                        setState(() {
                                          _currentIndex = index;
                                        });
                                      },
                                      aspectRatio: 2.0,
                                      enlargeCenterPage: false,
                                      scrollDirection: Axis.horizontal,
                                      autoPlay: false,
                                    ),
                                    items: imageTitles
                                        .map((item) => Container(
                                              margin: const EdgeInsets.all(5.0),
                                              child: ClipRRect(
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(5.0)),
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Image.network(
                                                        'https://demos.thewebdemo.net/graywhite-dev/${item}',
                                                        fit: BoxFit.cover,
                                                        width: 241,
                                                        height: 203,
                                                      ),
                                                    ],
                                                  )),
                                            ))
                                        .toList()),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: imageTitles.map((image) {
                                    int index = imageTitles.indexOf(image);
                                    return Container(
                                      width: 8.0,
                                      height: 8.0,
                                      margin: EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 2.0),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: _currentIndex == index
                                            ? Colors.blue
                                            : Colors.grey,
                                      ),
                                    );
                                  }).toList(),
                                ),
                                const SizedBox(height: 20),
                                Card(
                                  color: const Color.fromRGBO(
                                      255, 255, 255, 0.835),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                  ),
                                  elevation: 7,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 15),
                                        Text(
                                            responseData.result!.first
                                                .product_details!.productCode
                                                .toString(),
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.indigo.shade900)),
                                        const SizedBox(height: 10),
                                        Text(
                                            responseData.result!.first
                                                .product_details!.product_title
                                                .toString(),
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoMedium20),
                                        const SizedBox(height: 7),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text('Available with: ',
                                                style: AppStyle
                                                    .txtRobotoRegular11
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold)),
                                            for (var id in responseData
                                                    .result!
                                                    .first
                                                    .product_details!
                                                    .manufacture_name ??
                                                [])
                                              Text(
                                                  id.manufactureRegNo
                                                      .toString(),
                                                  style: AppStyle
                                                      .txtRobotoRegular11),
                                          ],
                                        ),
                                        divider(),
                                        // const SizedBox(height: 10),
                                        Text('Specifications'.toString(),
                                            style: AppStyle.txtRobotoRegular11
                                                .copyWith(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                        const SizedBox(height: 14),
                                        rowdata(
                                            text1: 'Fabric Category',
                                            text2: responseData
                                                .result!
                                                .first
                                                .product_details!
                                                .fabricCategory),
                                        divider(),
                                        rowdata(
                                            text1: 'Fabric Compostion',
                                            text2: responseData
                                                .result!
                                                .first
                                                .product_details!
                                                .fabricCompostionHeading),
                                        divider(),
                                        rowdata(
                                            text1: 'Fabric Type',
                                            text2: responseData.result!.first
                                                .product_details!.fabricType),
                                        divider(),
                                        rowdata(
                                            text1: 'Fabric Weave',
                                            text2: responseData.result!.first
                                                .product_details!.fabricWeave),
                                        divider(),
                                        rowdata(
                                            text1: 'Weight in gsm',
                                            text2: responseData.result!.first
                                                .product_details!.weight_gsm),
                                        divider(),
                                        rowdata(
                                            text1: 'Width',
                                            text2: responseData.result!.first
                                                .product_details!.width),
                                        divider(),
                                        rowdata(
                                            text1: 'Picks per inch (PRI)',
                                            text2: responseData.result!.first
                                                .product_details!.picks_per),
                                        divider(),
                                        rowdata(
                                            text1: 'Ends per inch (PRI)',
                                            text2: responseData.result!.first
                                                .product_details!.end_per),
                                        divider(),
                                        rowdata(
                                            text1: 'Weft Count',
                                            text2: responseData.result!.first
                                                .product_details!.weftCount),
                                        divider(),
                                        rowdata(
                                            text1: 'Warp Count',
                                            text2: responseData.result!.first
                                                .product_details!.warpCount),
                                        divider(),
                                        rowdata(
                                            text1: 'Warp Yarn',
                                            text2: responseData.result!.first
                                                .product_details!.warpYarn),
                                        divider(),
                                        rowdata(text1: 'Weft Yarn', text2: ''),
                                        divider(),
                                        rowdata(
                                            text1: 'Usage',
                                            text2: responseData.result!.first
                                                .product_details!.usage),
                                        divider(),
                                        Text("Product Description",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoMedium15Gray800),
                                        const SizedBox(height: 10),
                                        Text(
                                            responseData
                                                .result!
                                                .first
                                                .product_details!
                                                .product_description
                                                .toString(),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 5,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular12Gray80001),
                                        const SizedBox(height: 5),
                                        divider(),
                                        const SizedBox(height: 5),
                                        Text("Colors",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoMedium15Gray800),
                                        const SizedBox(height: 10),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            for (var id in responseData
                                                    .result!
                                                    .first
                                                    .product_details!
                                                    .productColour ??
                                                [])
                                              Row(
                                                children: [
                                                  const SizedBox(width: 5),
                                                  Container(
                                                    height: 25,
                                                    width: 25,
                                                    decoration: BoxDecoration(
                                                      color: getColor(id
                                                          .colourName
                                                          .toLowerCase()),
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .all(
                                                              Radius.circular(
                                                                  50.0)),
                                                    ),
                                                  ),
                                                ],
                                              ),

                                            // Text(id.colourCode.toString(),
                                            //     style: AppStyle
                                            //         .txtRobotoRegular11),
                                          ],
                                        ),
                                        const SizedBox(height: 20),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AppButton(
                                              withoutIcon: false,
                                              buttonWidth:
                                                  LayoutHelper.getWidth(context,
                                                      fraction: .43),
                                              buttonType: AppButtonType.OUTLINE,
                                              child: Text(
                                                'Enquire Now',
                                                style: AppStyle
                                                    .txtRobotoRegular14
                                                    .copyWith(
                                                        color: ColorConstant
                                                            .pink700Primary),
                                              ),
                                              onPressedOutline: () async {
                                                showSheet(
                                                        context: context,
                                                        product: responseData
                                                            .result!
                                                            .first
                                                            .product_details!
                                                            .product_title
                                                            .toString())
                                                    .then(
                                                  (value) {
                                                    setState(() {
                                                      if (data['msg'] ==
                                                          'Enquiry Submmited Successfully') {
                                                        SnackBarHelper()
                                                            .alertDialog(
                                                          context,
                                                          // titile: 'SUCESS',
                                                          // message:
                                                          //     'The Gray white Team will get back to you shortly!',
                                                          // stylishDialogType:
                                                          //     StylishDialogType
                                                          //         .SUCCESS
                                                        );
                                                      } else {
                                                        SnackBarHelper()
                                                            .showStylishDialog(
                                                                context:
                                                                    context,
                                                                titile: 'OOPS',
                                                                message: '',
                                                                stylishDialogType:
                                                                    StylishDialogType
                                                                        .ERROR);
                                                      }
                                                    });
                                                  },
                                                );
                                                setState(() {});
                                              },
                                            ),
                                            AppButton(
                                              buttonWidth:
                                                  LayoutHelper.getWidth(context,
                                                      fraction: .44),
                                              buttonType: AppButtonType.PRIMARY,
                                              child: Text(
                                                'Sample Request',
                                                style:
                                                    AppStyle.txtRobotoRegular14,
                                              ),
                                              onPressed: () async {
                                                // await getIt<AppRouter>()
                                                //     .push(const OrderIssueScreenScreenRoute());
                                              },
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 20),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            // child: Column(
                            //   mainAxisAlignment: MainAxisAlignment.start,
                            //   crossAxisAlignment: CrossAxisAlignment.start,
                            //   children: [
                            //     SizedBox(
                            //         height: getVerticalSize(170.00),
                            //         width: size.width,
                            //         child: CustomImageView(
                            //             url:
                            //                 'https://demos.thewebdemo.net/graywhite-dev/${responseData.result!.first.product_details!.default_image}',
                            //             height: getVerticalSize(170.00),
                            //             width: getHorizontalSize(375.00),
                            //             alignment: Alignment.center)),
                            //     const SizedBox(height: 5),
                            //     Padding(
                            //       padding: const EdgeInsets.only(
                            //           left: 8.0, right: 8),
                            //       child: Column(
                            //         mainAxisAlignment: MainAxisAlignment.start,
                            //         crossAxisAlignment:
                            //             CrossAxisAlignment.start,
                            //         children: [
                            //           Text(
                            //               responseData.result!.first
                            //                   .product_details!.product_title
                            //                   .toString(),
                            //               overflow: TextOverflow.ellipsis,
                            //               textAlign: TextAlign.left,
                            //               style: AppStyle.txtRobotoMedium20),
                            //           const SizedBox(height: 5),
                            //           Container(
                            //               height: getVerticalSize(2.00),
                            //               width: getHorizontalSize(345.00),
                            //               decoration: BoxDecoration(
                            //                   color: ColorConstant.gray30001)),
                            //           const SizedBox(height: 5),
                            //           Padding(
                            //               padding: getPadding(left: 5, top: 13),
                            //               child: Text("Specifications",
                            //                   overflow: TextOverflow.ellipsis,
                            //                   textAlign: TextAlign.left,
                            //                   style: AppStyle
                            //                       .txtRobotoMedium15Gray800)),
                            //           Container(
                            //               height: getVerticalSize(2.00),
                            //               width: getHorizontalSize(100.00),
                            //               margin: getMargin(left: 5, top: 2),
                            //               decoration: BoxDecoration(
                            //                   borderRadius:
                            //                       BorderRadius.circular(
                            //                           getHorizontalSize(1.00)),
                            //                   gradient: LinearGradient(
                            //                       begin: const Alignment(0, 0),
                            //                       end: const Alignment(0, 0),
                            //                       colors: [
                            //                         ColorConstant.blueGray600,
                            //                         ColorConstant.indigo900
                            //                       ]))),
                            //           const SizedBox(height: 10),

                            //           Padding(
                            //             padding: getPadding(left: 10),
                            //             child: Row(
                            //               children: [
                            //                 Expanded(
                            //                     flex: 1,
                            //                     child: Text("Weight Carton ",
                            //                         overflow:
                            //                             TextOverflow.ellipsis,
                            //                         textAlign: TextAlign.left,
                            //                         style: AppStyle
                            //                             .txtRobotoBold11)),
                            //                 Expanded(
                            //                     flex: 3,
                            //                     child: Text(
                            //                         responseData
                            //                             .result!
                            //                             .first
                            //                             .product_details!
                            //                             .weightCarton
                            //                             .toString(),
                            //                         overflow:
                            //                             TextOverflow.ellipsis,
                            //                         textAlign: TextAlign.left,
                            //                         style: AppStyle
                            //                             .txtRobotoRegular11)),
                            //               ],
                            //             ),
                            //           ),
                            //           const SizedBox(height: 10),
                            //           Padding(
                            //             padding: getPadding(left: 10),
                            //             child: Row(
                            //               children: [
                            //                 Expanded(
                            //                     flex: 1,
                            //                     child: Text("Cones Carton  ",
                            //                         overflow:
                            //                             TextOverflow.ellipsis,
                            //                         textAlign: TextAlign.left,
                            //                         style: AppStyle
                            //                             .txtRobotoBold11)),
                            //                 Expanded(
                            //                     flex: 3,
                            //                     child: Text(
                            //                         responseData
                            //                             .result!
                            //                             .first
                            //                             .product_details!
                            //                             .conesCarton
                            //                             .toString(),
                            //                         overflow:
                            //                             TextOverflow.ellipsis,
                            //                         textAlign: TextAlign.left,
                            //                         style: AppStyle
                            //                             .txtRobotoRegular11)),
                            //               ],
                            //             ),
                            //           ),
                            //           const SizedBox(height: 10),
                            //           Padding(
                            //             padding: getPadding(left: 10),
                            //             child: Row(
                            //               children: [
                            //                 Expanded(
                            //                     flex: 1,
                            //                     child: Text("Period Delivery ",
                            //                         overflow:
                            //                             TextOverflow.ellipsis,
                            //                         textAlign: TextAlign.left,
                            //                         style: AppStyle
                            //                             .txtRobotoBold11)),
                            //                 Expanded(
                            //                     flex: 3,
                            //                     child: Text(
                            //                         responseData
                            //                             .result!
                            //                             .first
                            //                             .product_details!
                            //                             .periodDelivery
                            //                             .toString(),
                            //                         overflow:
                            //                             TextOverflow.ellipsis,
                            //                         textAlign: TextAlign.left,
                            //                         style: AppStyle
                            //                             .txtRobotoRegular11)),
                            //               ],
                            //             ),
                            //           ),
                            //           const SizedBox(height: 10),
                            //           Padding(
                            //             padding: getPadding(left: 10),
                            //             child: Row(
                            //               children: [
                            //                 Expanded(
                            //                     flex: 1,
                            //                     child: Text("PriceKg  ",
                            //                         overflow:
                            //                             TextOverflow.ellipsis,
                            //                         textAlign: TextAlign.left,
                            //                         style: AppStyle
                            //                             .txtRobotoBold11)),
                            //                 Expanded(
                            //                     flex: 3,
                            //                     child: Text(
                            //                         responseData
                            //                             .result!
                            //                             .first
                            //                             .product_details!
                            //                             .priceKg
                            //                             .toString(),
                            //                         overflow:
                            //                             TextOverflow.ellipsis,
                            //                         textAlign: TextAlign.left,
                            //                         style: AppStyle
                            //                             .txtRobotoRegular11)),
                            //               ],
                            //             ),
                            //           ),
                            //           const SizedBox(
                            //             height: 20,
                            //           ),
                            //           Container(
                            //               height: getVerticalSize(2.00),
                            //               width: getHorizontalSize(345.00),
                            //               decoration: BoxDecoration(
                            //                   color: ColorConstant.gray30001)),
                            //           const SizedBox(height: 5),
                            //           Padding(
                            //               padding: getPadding(left: 5, top: 14),
                            //               child: Text("Product Description",
                            //                   overflow: TextOverflow.ellipsis,
                            //                   textAlign: TextAlign.left,
                            //                   style: AppStyle
                            //                       .txtRobotoMedium15Gray800)),
                            //           const SizedBox(height: 5),
                            //           Padding(
                            //               padding: getPadding(left: 5, top: 7),
                            //               child: Text(
                            //                   responseData
                            //                       .result!
                            //                       .first
                            //                       .product_details!
                            //                       .product_description
                            //                       .toString(),
                            //                   overflow: TextOverflow.ellipsis,
                            //                   maxLines: 5,
                            //                   textAlign: TextAlign.left,
                            //                   style: AppStyle
                            //                       .txtInterRegular12Gray80001)),
                            //           const SizedBox(height: 10),
                            //           Container(
                            //               height: getVerticalSize(2.00),
                            //               width: getHorizontalSize(345.00),
                            //               decoration: BoxDecoration(
                            //                   color: ColorConstant.gray30001)),
                            //           const SizedBox(height: 5),
                            //           Padding(
                            //               padding: getPadding(left: 5, top: 13),
                            //               child: Text("Colors",
                            //                   overflow: TextOverflow.ellipsis,
                            //                   textAlign: TextAlign.left,
                            //                   style: AppStyle
                            //                       .txtRobotoMedium15Gray800)),
                            //           CustomImageView(
                            //               svgPath: ImageConstant.imgGroup6827,
                            //               height: getVerticalSize(30.00),
                            //               width: getHorizontalSize(310.00),
                            //               margin: getMargin(left: 5, top: 9)),

                            //           const SizedBox(height: 20),
                            //           // Container(
                            //           //     height: getVerticalSize(2.00),
                            //           //     width: getHorizontalSize(345.00),
                            //           //     decoration: BoxDecoration(
                            //           //         color: ColorConstant.gray30001)),
                            //           // Padding(
                            //           //     padding: getPadding(left: 5, top: 13),
                            //           //     child: Text("Features",
                            //           //         overflow: TextOverflow.ellipsis,
                            //           //         textAlign: TextAlign.left,
                            //           //         style: AppStyle
                            //           //             .txtRobotoMedium15Gray800)),
                            //           // Container(
                            //           //     height: getVerticalSize(2.00),
                            //           //     width: getHorizontalSize(61.00),
                            //           //     margin: getMargin(left: 5, top: 2),
                            //           //     decoration: BoxDecoration(
                            //           //         borderRadius:
                            //           //             BorderRadius.circular(
                            //           //                 getHorizontalSize(1.00)),
                            //           //         gradient: LinearGradient(
                            //           //             begin: Alignment(0, 0),
                            //           //             end: Alignment(0, 0),
                            //           //             colors: [
                            //           //               ColorConstant.blueGray600,
                            //           //               ColorConstant.indigo900
                            //           //             ]))),
                            //           // const SizedBox(height: 10),
                            //           // Padding(
                            //           //   padding: getPadding(left: 10),
                            //           //   child: Row(
                            //           //     children: [
                            //           //       Expanded(
                            //           //           flex: 1,
                            //           //           child: Text("Yarn Type ",
                            //           //               overflow:
                            //           //                   TextOverflow.ellipsis,
                            //           //               textAlign: TextAlign.left,
                            //           //               style: AppStyle
                            //           //                   .txtRobotoBold11)),
                            //           //       Expanded(
                            //           //           flex: 3,
                            //           //           child: Text(
                            //           //               responseData
                            //           //                   .result!
                            //           //                   .first
                            //           //                   .product_details!
                            //           //                   .yarnCatName
                            //           //                   .toString(),
                            //           //               overflow:
                            //           //                   TextOverflow.ellipsis,
                            //           //               textAlign: TextAlign.left,
                            //           //               style: AppStyle
                            //           //                   .txtRobotoRegular11)),
                            //           //     ],
                            //           //   ),
                            //           // ),
                            //           // const SizedBox(height: 10),
                            //           // Padding(
                            //           //   padding: getPadding(left: 10),
                            //           //   child: Row(
                            //           //     children: [
                            //           //       Expanded(
                            //           //           flex: 1,
                            //           //           child: Text("Category ",
                            //           //               overflow:
                            //           //                   TextOverflow.ellipsis,
                            //           //               textAlign: TextAlign.left,
                            //           //               style: AppStyle
                            //           //                   .txtRobotoBold11)),
                            //           //       Expanded(
                            //           //           flex: 3,
                            //           //           child: Text(
                            //           //               responseData
                            //           //                   .result!
                            //           //                   .first
                            //           //                   .product_details!
                            //           //                   .categoryTitle
                            //           //                   .toString(),
                            //           //               overflow:
                            //           //                   TextOverflow.ellipsis,
                            //           //               textAlign: TextAlign.left,
                            //           //               style: AppStyle
                            //           //                   .txtRobotoRegular11)),
                            //           //     ],
                            //           //   ),
                            //           // ),
                            //           // const SizedBox(height: 10),
                            //           // const SizedBox(height: 20),
                            //           // Container(
                            //           //     height: getVerticalSize(2.00),
                            //           //     width: getHorizontalSize(345.00),
                            //           //     decoration: BoxDecoration(
                            //           //         color: ColorConstant.gray30001)),
                            //           // Padding(
                            //           //     padding: getPadding(left: 5, top: 13),
                            //           //     child: Text("Quality Parameters",
                            //           //         overflow: TextOverflow.ellipsis,
                            //           //         textAlign: TextAlign.left,
                            //           //         style: AppStyle
                            //           //             .txtRobotoMedium15Gray800)),
                            //           // Container(
                            //           //     height: getVerticalSize(2.00),
                            //           //     width: getHorizontalSize(135.00),
                            //           //     margin: getMargin(left: 5, top: 2),
                            //           //     decoration: BoxDecoration(
                            //           //         borderRadius:
                            //           //             BorderRadius.circular(
                            //           //                 getHorizontalSize(1.00)),
                            //           //         gradient: LinearGradient(
                            //           //             begin: const Alignment(0, 0),
                            //           //             end: const Alignment(0, 0),
                            //           //             colors: [
                            //           //               ColorConstant.blueGray600,
                            //           //               ColorConstant.indigo900
                            //           //             ]))),
                            //           const SizedBox(height: 10),

                            //           // Padding(
                            //           //   padding: getPadding(left: 10),
                            //           //   child: Row(
                            //           //     children: [
                            //           //       Expanded(
                            //           //           flex: 1,
                            //           //           child: Text("Actual Count ",
                            //           //               overflow:
                            //           //                   TextOverflow.ellipsis,
                            //           //               textAlign: TextAlign.left,
                            //           //               style: AppStyle
                            //           //                   .txtRobotoBold11)),
                            //           //       Expanded(
                            //           //           flex: 3,
                            //           //           child: Text(
                            //           //               responseData
                            //           //                   .result!
                            //           //                   .first
                            //           //                   .product_details!
                            //           //                   .acutualCount
                            //           //                   .toString(),
                            //           //               overflow:
                            //           //                   TextOverflow.ellipsis,
                            //           //               textAlign: TextAlign.left,
                            //           //               style: AppStyle
                            //           //                   .txtRobotoRegular11)),
                            //           //     ],
                            //           //   ),
                            //           // ),
                            //           // const SizedBox(height: 10),

                            //           const SizedBox(height: 20),
                            //           // Container(
                            //           //     height: getVerticalSize(2.00),
                            //           //     width: getHorizontalSize(345.00),
                            //           //     decoration: BoxDecoration(
                            //           //         color: ColorConstant.gray30001)),

                            //           Column(
                            //             children: [
                            //             ],
                            //           ),
                            //           const SizedBox(height: 70)

                            //           // acutualCount conesCarton periodDelivery priceKg
                            //         ],
                            //       ),
                            //     ),
                            //   ],
                            // ),
                          );
                        } else {
                          return const DataNotFoundPage();
                        }
                      },
                      orElse: () => Container(),
                      failure: () => const DataNotFoundPage());
                }),
                floatingActionButton: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: ColorConstant.pink700Primary,
                  child: const Icon(Icons.message_outlined),
                ),
              ),
              if (!dataLoaded) Loader.loadingIndicatorDefault(true)
            ],
          ),
        ));
  }

  TextEditingController pquantity = TextEditingController();
  TextEditingController pquality = TextEditingController();
  TextEditingController pdate = TextEditingController();
  TextEditingController pcomment = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var data;
  bool dataLoaded1 = false;
  Future showSheet({
    required BuildContext context,
    required String product,
  }) {
    data = null;
    pquality.text = product;
    return showModalBottomSheet(
        isDismissible: false,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(45),
            topLeft: Radius.circular(45),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            top: false,
            bottom: false,
            // minimum: const EdgeInsets.only(top: 25),
            child: Stack(
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height: LayoutHelper.getHeight(context, fraction: 0.60),
                        padding: MediaQuery.of(context).viewInsets,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 45,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        ColorConstant.indigo900,
                                        Colors.indigo
                                      ],
                                      begin: const FractionalOffset(0.0, 0.0),
                                      end: const FractionalOffset(1.0, 0.0),
                                      stops: const [0.0, 1.0],
                                      tileMode: TileMode.clamp),
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20.0),
                                    topLeft: Radius.circular(20.0),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    const Text(
                                      'Order Enquiry',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: const Icon(
                                          Icons.close,
                                          color: Colors.white,
                                        ))
                                  ],
                                )),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 20),
                                      Text(
                                        "Product Name",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoMedium14
                                            .copyWith(color: Colors.grey),
                                      ),
                                      const SizedBox(height: 5),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomFormField(
                                            textColor: Colors.grey.shade600,
                                            readOnly: true,
                                            nameController: pquality,
                                            hintText: "Enter product quality",
                                            width: 350,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      Text(
                                        "Product quantity",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoMedium14,
                                      ),
                                      const SizedBox(height: 5),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomFormField(
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return "";
                                              }
                                              return null;
                                            },
                                            keyboardType: TextInputType.number,
                                            nameController: pquantity,
                                            hintText: "Enter product quantity",
                                            width: 350,
                                          ),
                                        ],
                                      ),

                                      // const SizedBox(height: 20),
                                      // Text(
                                      //   "Delivery roduct",
                                      //   overflow: TextOverflow.ellipsis,
                                      //   textAlign: TextAlign.left,
                                      //   style: AppStyle.txtRobotoMedium14,
                                      // ),
                                      // const SizedBox(height: 5),
                                      // Column(
                                      //   mainAxisSize: MainAxisSize.min,
                                      //   crossAxisAlignment:
                                      //       CrossAxisAlignment.start,
                                      //   mainAxisAlignment:
                                      //       MainAxisAlignment.start,
                                      //   children: [
                                      //     CustomFormField(
                                      //       validator: (value) {
                                      //         if (value!.isEmpty) {
                                      //           return "";
                                      //         }
                                      //         return null;
                                      //       },
                                      //       keyboardType: TextInputType.datetime,
                                      //       nameController: pdate,
                                      //       hintText:
                                      //           "Enter delivery product (Date:dd/mm/yyyy)",
                                      //       width: 350,
                                      //     ),
                                      //   ],
                                      // ),
                                      const SizedBox(height: 20),
                                      Text(
                                        "Comment (Optional)",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoMedium14,
                                      ),
                                      const SizedBox(height: 5),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomFormField(
                                            nameController: pcomment,
                                            hintText: "Enter comment",
                                            width: 350,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Center(
                                        child: AppButton(
                                          buttonWidth: 350,
                                          buttonType: AppButtonType.PRIMARY,
                                          child: Text(
                                            'Apply',
                                            style: AppStyle.txtRobotoRegular14,
                                          ),
                                          onPressed: () async {
                                            if (_formKey.currentState!
                                                .validate()) {
                                              setState(() {
                                                // dataLoaded = false;
                                              });

                                              await ProductDetailsCubit()
                                                  .orderEnquiry(
                                                      enquiryComment: pcomment
                                                          .text,
                                                      enquiryQuality: pquality
                                                          .text,
                                                      enquiryQuantity: pquantity
                                                          .text,
                                                      enquiryTimeline: DateFormat(
                                                              "yyyy-MM-dd hh:mm:ss")
                                                          .format(
                                                              DateTime.now()),
                                                      userId:
                                                          getIt<SharedPreferences>()
                                                                  .getString(
                                                                      'id') ??
                                                              '0',
                                                      productId:
                                                          productDetailsResponse
                                                              ?.result
                                                              ?.first
                                                              .product_details
                                                              ?.product_id
                                                              .toString())
                                                  .then((value) {
                                                setState(() {
                                                  // dataLoaded = true;
                                                  data = value;
                                                });
                                              });
                                              pcomment.clear();
                                              pquantity.clear();
                                              pdate.clear();
                                              Navigator.pop(context);
                                            }
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // if (!dataLoaded1) CircularProgressIndicator()
              ],
            ),
          );
        });
  }
}

Color getColor(String colorName) {
  String colorKey = colorName.toLowerCase();
  switch (colorKey) {
    case 'blue':
      return Colors.blue;
    case 'green':
      return Colors.green;
    case 'red':
      return Colors.red;
    case 'yellow':
      return Colors.yellow;
    case 'orange':
      return Colors.orange;
    case 'purple':
      return Colors.purple;
    case 'white':
      return Colors.white;
    default:
      return Colors.black; // Fallback color
  }
}

Widget divider() {
  return Column(
    children: [
      const SizedBox(height: 5),
      Divider(
        thickness: .2,
        color: Colors.grey.shade900,
      ),
      const SizedBox(height: 5)
    ],
  );
}

Widget rowdata({String? text1, String? text2}) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0),
    child: Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(text1 ?? '',
              style: AppStyle.txtRobotoRegular11
                  .copyWith(fontWeight: FontWeight.bold)),
        ),
        Expanded(
          flex: 3,
          child:
              Text(text2 ?? '', style: AppStyle.txtRobotoRegular11.copyWith()),
        ),
      ],
    ),
  );
}
