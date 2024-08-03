import 'package:flutter/material.dart';

import '../../../core/constants/color/color_constant.dart';
import '../../../core/constants/utils/size_utils.dart';
import '../../../core/theme/app_text_theme.dart';

// ignore: must_be_immutable
class TrackEnquiryItemWidget extends StatefulWidget {
  final TextStyle? style1;
  final TextStyle? style2;
  final TextStyle? style3;
  final String? data1;
  TrackEnquiryItemWidget({this.style1, this.style2, this.style3, this.data1});

  @override
  State<TrackEnquiryItemWidget> createState() => _TrackEnquiryItemWidgetState();
}

class _TrackEnquiryItemWidgetState extends State<TrackEnquiryItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: getSize(
                  11.00,
                ),
                width: getSize(
                  11.00,
                ),
                margin: getMargin(
                  top: 10,
                  bottom: 8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      5.00,
                    ),
                  ),
                  gradient: LinearGradient(
                    begin: const Alignment(
                      0,
                      0,
                    ),
                    end: const Alignment(
                      0,
                      0,
                    ),
                    colors: [
                      ColorConstant.blueGray600,
                      ColorConstant.indigo900,
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Enquiry Created",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: widget.style1 ?? AppStyle.txtRobotoMedium12Black900,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 3,
                    ),
                    child: Text(
                      widget.data1 ?? 'We have create your .............',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRegular10Bluegray20001,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: getSize(
                  11.00,
                ),
                width: getSize(
                  11.00,
                ),
                margin: getMargin(
                  top: 10,
                  bottom: 8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      5.00,
                    ),
                  ),
                  gradient: LinearGradient(
                    begin: const Alignment(
                      0,
                      0,
                    ),
                    end: const Alignment(
                      0,
                      0,
                    ),
                    colors: [
                      ColorConstant.blueGray600,
                      ColorConstant.indigo900,
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Rate Recived",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: widget.style2 ?? AppStyle.txtRobotoMedium12Black900,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 3,
                    ),
                    child: Text(
                      "We have create your .............",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRegular10Bluegray20001,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: getSize(
                  11.00,
                ),
                width: getSize(
                  11.00,
                ),
                margin: getMargin(
                  top: 10,
                  bottom: 8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      5.00,
                    ),
                  ),
                  gradient: LinearGradient(
                    begin: const Alignment(
                      0,
                      0,
                    ),
                    end: const Alignment(
                      0,
                      0,
                    ),
                    colors: [
                      ColorConstant.blueGray600,
                      ColorConstant.indigo900,
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Sample Request",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: widget.style3 ?? AppStyle.txtRobotoMedium12Black900,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 3,
                    ),
                    child: Text(
                      "We have create your .............",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRegular10Bluegray20001,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
