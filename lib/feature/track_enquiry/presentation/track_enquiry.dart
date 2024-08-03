import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gerywhite/core/helper/layout_helper.dart';
import 'package:gerywhite/feature/track_enquiry/presentation/track_enquiry_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/constants/color/color_constant.dart';
import '../../../core/constants/image/image_constant.dart';
import '../../../core/constants/utils/size_utils.dart';
import '../../../core/helper/loader_helper.dart';
import '../../../core/theme/app_decoration.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../injection_container.dart';
import '../../../pages/data_notfound.dart';
import '../../../widgets/appbar/custom_app_bar.dart';
import '../../../widgets/custom_image.dart';
import 'cubit/track_enquiry_cubit.dart';

class TrackEnquiryScreen extends StatefulWidget {
  final String enquiryId;
  const TrackEnquiryScreen({super.key, required this.enquiryId});

  @override
  State<TrackEnquiryScreen> createState() => _TrackEnquiryScreenState();
}

class _TrackEnquiryScreenState extends State<TrackEnquiryScreen> {
  @override
  void initState() {
    print(widget.enquiryId);
    super.initState();
  }

  bool dataLoaded = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: BlocProvider(
          create: (context) =>
              getIt<TrackEnquiryCubit>()..enquiryDetial(id: widget.enquiryId),
          child: Stack(
            children: [
              Scaffold(
                backgroundColor: ColorConstant.gray5001,
                appBar: PreferredSize(
                    preferredSize: const Size.fromHeight(65),
                    child: CustomAppBar(
                      title: 'Track Enquiry',
                      backbutton: true,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )),
                body: BlocConsumer<TrackEnquiryCubit, TrackMyEnquiryState>(
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
                          if (responseData.result[0].isEmpty) {
                            return const DataNotFoundPage(
                                message: 'No Data Avalibale');
                          } else {
                            return SingleChildScrollView(
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: responseData.result![0].length,
                                    itemBuilder: (context, int index) {
                                      return Column(children: [
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        SizedBox(
                                            width: LayoutHelper.getWidth(
                                                context,
                                                fraction: .85),
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          padding: getPadding(
                                                              left: 15,
                                                              top: 20,
                                                              right: 15,
                                                              bottom: 20),
                                                          decoration: AppDecoration
                                                              .outlineBlack9001a
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder8),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width: getHorizontalSize(
                                                                        305.00),
                                                                    margin: getMargin(
                                                                        top:
                                                                            78),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.gray60087)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                13),
                                                                    child: Text(
                                                                        "Enquiry Details",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoBold14Gray90002)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                9),
                                                                    child: Row(
                                                                        children: [
                                                                          Text(
                                                                              "Delivery period",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoMedium11),
                                                                          Padding(
                                                                              padding: getPadding(left: 55),
                                                                              child: Text('4-5 days', overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular11))
                                                                        ])),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                14),
                                                                    child: Row(
                                                                        children: [
                                                                          Text(
                                                                              "Product Quantity",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoMedium11),
                                                                          Padding(
                                                                              padding: getPadding(left: 46),
                                                                              child: Text(responseData.result[0]['enquiryDetial']['enquiryQuantity'].toString(), overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular11))
                                                                        ])),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                14),
                                                                    child: Row(
                                                                        children: [
                                                                          Text(
                                                                              "Product quality",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoMedium11),
                                                                          Padding(
                                                                              padding: getPadding(left: 54),
                                                                              child: Text(responseData.result[0]['enquiryDetial']['product_title'].toString(), overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular11))
                                                                        ])),
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width: getHorizontalSize(
                                                                        305.00),
                                                                    margin: getMargin(
                                                                        top:
                                                                            31),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.gray60087)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                12),
                                                                    child: Text(
                                                                        "Track Orders",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoBold14Gray90002)),
                                                                Container(
                                                                    height: getVerticalSize(
                                                                        129.00),
                                                                    width: getHorizontalSize(
                                                                        221.00),
                                                                    margin: getMargin(
                                                                        top:
                                                                            15),
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        children: [
                                                                          Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Container(height: getVerticalSize(100.00), width: getHorizontalSize(1.00), margin: getMargin(left: 5), decoration: BoxDecoration(color: ColorConstant.blueGray20001))),
                                                                          Align(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child:
                                                                                TrackEnquiryItemWidget(
                                                                              data1: "${responseData.result[0]['enquiryDetial']['enquiryTimeline']}                                ",
                                                                              style1: AppStyle.txtRobotoMedium12Black900.copyWith(color: (responseData.result[0]['enquiryDetial']['is_tracking'].toString() == '0' || responseData.result[0]['enquiryDetial']['is_tracking'].toString() == '1' || responseData.result[0]['enquiryDetial']['is_tracking'].toString() == '2') ? Colors.green : Colors.grey),
                                                                              style2: AppStyle.txtRobotoMedium12Black900.copyWith(color: (responseData.result[0]['enquiryDetial']['is_tracking'].toString() == '1' || responseData.result[0]['enquiryDetial']['is_tracking'].toString() == '2') ? Colors.green : Colors.grey),
                                                                              style3: AppStyle.txtRobotoMedium12Black900.copyWith(color: (responseData.result[0]['enquiryDetial']['is_tracking'].toString() == '2') ? Colors.green : Colors.grey),
                                                                            ),
                                                                          ),
                                                                        ]))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Padding(
                                                        padding:
                                                            getPadding(top: 15),
                                                        child: Row(
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
                                                                      'https://demos.thewebdemo.net/graywhite-dev/${responseData.result[0]['enquiryDetial']['default_image']}',
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
                                                                    responseData
                                                                        .result[
                                                                            0][
                                                                            'enquiryDetial']
                                                                            [
                                                                            'product_title']
                                                                        .toString(),
                                                                    maxLines:
                                                                        null,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoMedium15),
                                                                Text(
                                                                    'Po Number ${responseData.result[0]['enquiryDetial']['enquiryPO']}',
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular12Gray700)
                                                              ],
                                                            ),
                                                            const SizedBox(
                                                              width: 10,
                                                            ),
                                                          ],
                                                        ),
                                                      ))
                                                ])),
                                      ]);
                                    },
                                  ),
                                ],
                              ),
                            );
                          }
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

  onTapArrowleft9(BuildContext context) {
    Navigator.pop(context);
  }
}
