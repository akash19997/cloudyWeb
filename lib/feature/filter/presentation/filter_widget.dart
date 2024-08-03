import 'package:flutter/material.dart';

import '../../../core/constants/image/image_constant.dart';
import '../../../core/constants/utils/size_utils.dart';
import '../../../core/theme/app_decoration.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../widgets/custom_image.dart';

// ignore: must_be_immutable
class FilterItemWidget extends StatelessWidget {
  const FilterItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 46,
        top: 33,
        right: 46,
        bottom: 33,
      ),
      decoration: AppDecoration.outlineBlueA20033.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgSignal,
            height: getVerticalSize(
              70.00,
            ),
            width: getHorizontalSize(
              69.00,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 3,
              bottom: 2,
            ),
            child: Text(
              "Cotton",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoRegular15WhiteA700,
            ),
          ),
        ],
      ),
    );
  }
}
