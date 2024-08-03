import 'package:flutter/material.dart';

import '../../../core/constants/color/color_constant.dart';
import '../../../core/constants/utils/size_utils.dart';
import '../../../core/theme/app_text_theme.dart';

// ignore: must_be_immutable
class TrackOrdersItemWidget extends StatelessWidget {
  TrackOrdersItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
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
              top: 12,
              bottom: 7,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  5.00,
                ),
              ),
              gradient: LinearGradient(
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
                "Order Confirmed",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoMedium12Black900,
              ),
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: Text(
                  "We has been co....",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRegular10Bluegray20001,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
