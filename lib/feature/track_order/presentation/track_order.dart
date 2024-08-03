import 'package:flutter/material.dart';
import 'package:gerywhite/core/helper/layout_helper.dart';
import 'package:gerywhite/feature/order_issue/presentation/order_issue.dart';
import 'package:gerywhite/feature/track_order/presentation/track_order_page.dart';
import '../../../core/constants/color/color_constant.dart';
import '../../../core/constants/enum/custom_app_button_enum.dart';
import '../../../core/constants/image/image_constant.dart';
import '../../../core/constants/utils/size_utils.dart';
import '../../../core/navigation/route.dart';
import '../../../core/theme/app_decoration.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../injection_container.dart';
import '../../../widgets/appbar/custom_app_bar.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image.dart';
import '../../track_enquiry/presentation/track_enquiry_widget.dart';

class TrackOrdersScreen extends StatelessWidget {
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
                title: 'Track Order',
                backbutton: true,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )),
          body: Container(
              width: size.width,
              child: Column(children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                    width: LayoutHelper.getWidth(context, fraction: .85),
                    child: Stack(alignment: Alignment.topRight, children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              padding: getPadding(
                                  left: 15, top: 20, right: 15, bottom: 20),
                              decoration: AppDecoration.outlineBlack9001a
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(305.00),
                                        margin: getMargin(top: 78),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray60087)),
                                    Padding(
                                        padding: getPadding(top: 13),
                                        child: Text("Order Details",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoBold14Gray90002)),
                                    Padding(
                                        padding: getPadding(top: 9),
                                        child: Row(children: [
                                          Text("Delivery period",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtRobotoMedium11),
                                          Padding(
                                              padding: getPadding(left: 55),
                                              child: Text("4-5 Days",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular11))
                                        ])),
                                    Padding(
                                        padding: getPadding(top: 14),
                                        child: Row(children: [
                                          Text("Product Quantity",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtRobotoMedium11),
                                          Padding(
                                              padding: getPadding(left: 46),
                                              child: Text("500 piece",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular11))
                                        ])),
                                    Padding(
                                        padding: getPadding(top: 14),
                                        child: Row(children: [
                                          Text("Product quality",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtRobotoMedium11),
                                          Padding(
                                              padding: getPadding(left: 54),
                                              child: Text("Warp",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular11))
                                        ])),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(305.00),
                                        margin: getMargin(top: 31),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray60087)),
                                    Padding(
                                        padding: getPadding(top: 12),
                                        child: Text("Track Orders",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoBold14Gray90002)),
                                    Container(
                                        height: getVerticalSize(129.00),
                                        width: getHorizontalSize(221.00),
                                        margin: getMargin(top: 15),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          100.00),
                                                      width: getHorizontalSize(
                                                          1.00),
                                                      margin:
                                                          getMargin(left: 5),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .blueGray20001))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: ListView.separated(
                                                      physics:
                                                          const BouncingScrollPhysics(),
                                                      shrinkWrap: true,
                                                      separatorBuilder:
                                                          (context, index) {
                                                        return SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    18.00));
                                                      },
                                                      itemCount: 3,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return TrackEnquiryItemWidget();
                                                      }))
                                            ]))
                                  ]))),
                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: getPadding(top: 15),
                            child: Row(
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
                                Column(
                                  children: [
                                    Text("Weaving 16s ",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoMedium15),
                                    Text("Lorem ipsum dolor sed do...",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRobotoRegular12Gray700)
                                  ],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          )),
                    ])),
                const SizedBox(height: 15),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppButton(
                          withoutIcon: false,
                          buttonWidth: 170,
                          buttonType: AppButtonType.OUTLINE,
                          child: Text(
                            'Order Issue',
                            style: AppStyle.txtRobotoRegular14
                                .copyWith(color: ColorConstant.pink700Primary),
                          ),
                          onPressedOutline: () async {
                            await getIt<AppRouter>()
                                .push(const OrderIssueScreenScreenRoute());
                          },
                        ),
                        AppButton(
                          buttonWidth: 170,
                          buttonType: AppButtonType.PRIMARY,
                          child: Text(
                            'Download Invoice',
                            style: AppStyle.txtRobotoRegular14,
                          ),
                          onPressed: () async {
                            // await getIt<AppRouter>()
                            //     .push(const OrderIssueScreenScreenRoute());
                          },
                        ),
                      ],
                    ),
                  ],
                ),
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
