import 'package:flutter/material.dart';

import '../../../core/constants/color/color_constant.dart';
import '../../../core/constants/image/image_constant.dart';
import '../../../core/constants/utils/size_utils.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../widgets/custom_image.dart';

// ignore: must_be_immutable
class ListrectanglefiftythreeFourItemWidget extends StatelessWidget {
  const ListrectanglefiftythreeFourItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(
        100.00,
      ),
      width: getHorizontalSize(
        355.00,
      ),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: getVerticalSize(
                100.00,
              ),
              width: getHorizontalSize(
                335.00,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    10.00,
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: ColorConstant.black9001a,
                    spreadRadius: getHorizontalSize(
                      2.00,
                    ),
                    blurRadius: getHorizontalSize(
                      2.00,
                    ),
                    offset: const Offset(
                      0,
                      2,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgUnsplashk4cvkfs5cta,
                  height: getSize(
                    70.00,
                  ),
                  width: getSize(
                    70.00,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      8.00,
                    ),
                  ),
                  margin: getMargin(
                    top: 1,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    bottom: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: getHorizontalSize(
                          210.00,
                        ),
                        child: Text(
                          "Weaving 16s Carded Warp Ring\nFrame by ",
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoMedium15,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 1,
                        ),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur \u000badipiscing elit, sed do...",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular12Gray700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
