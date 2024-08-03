import 'package:flutter/material.dart';
import 'package:gerywhite/widgets/appbar/custom_app_bar.dart';
import '../../../core/constants/color/color_constant.dart';
import '../../../core/constants/image/image_constant.dart';
import '../../../core/constants/utils/size_utils.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../widgets/custom_image.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
            backbutton: true,
            title: 'Notification',
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
              width: size.width,
              child: Stack(alignment: Alignment.topRight, children: [
                Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                        width: getHorizontalSize(356.00),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20),
                              Padding(
                                  padding: getPadding(left: 1),
                                  child: Row(children: [
                                    Text("Weaving 16s Carded",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoBold14),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgGroup36578,
                                        height: getVerticalSize(13.00),
                                        width: getHorizontalSize(3.00),
                                        margin: getMargin(left: 205, bottom: 3))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 1, top: 5),
                                  child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, \u000bsed do eiusmod tempor",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular13)),
                              Padding(
                                  padding: getPadding(left: 1, top: 24),
                                  child: Text("05.00 PM",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoBold12)),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(335.00),
                                  margin: getMargin(left: 1, top: 6),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray6006c)),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Row(children: [
                                    Text("Weaving 16s Carded",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoBold14),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgGroup36578,
                                        height: getVerticalSize(13.00),
                                        width: getHorizontalSize(3.00),
                                        margin: getMargin(left: 205, bottom: 3))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 5),
                                  child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, \u000bsed do eiusmod tempor",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular13)),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("05.00 PM",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoBold12)),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(335.00),
                                  margin: getMargin(top: 6),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray6006c)),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Row(children: [
                                    Text("Weaving 16s Carded",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoBold14),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgGroup36578,
                                        height: getVerticalSize(13.00),
                                        width: getHorizontalSize(3.00),
                                        margin: getMargin(left: 205, bottom: 3))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 5),
                                  child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, \u000bsed do eiusmod tempor",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular13)),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("05.00 PM",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoBold12)),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(335.00),
                                  margin: getMargin(top: 6),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray6006c)),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Row(children: [
                                    Text("Weaving 16s Carded",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoBold14),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgGroup36578,
                                        height: getVerticalSize(13.00),
                                        width: getHorizontalSize(3.00),
                                        margin: getMargin(left: 205, bottom: 3))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 5),
                                  child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, \u000bsed do eiusmod tempor",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular13)),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("05.00 PM",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoBold12)),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(335.00),
                                  margin: getMargin(top: 6),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray6006c)),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Row(children: [
                                    Text("Weaving 16s Carded",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoBold14),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgGroup36578,
                                        height: getVerticalSize(13.00),
                                        width: getHorizontalSize(3.00),
                                        margin: getMargin(left: 205, bottom: 3))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 5),
                                  child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, \u000bsed do eiusmod tempor",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular13)),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("05.00 PM",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoBold12)),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(335.00),
                                  margin: getMargin(top: 6),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray6006c)),
                            ]))),
              ])),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: ColorConstant.pink700Primary,
          child: const Icon(Icons.message_outlined),
        ),
      ),
    );
  }

  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }
}
