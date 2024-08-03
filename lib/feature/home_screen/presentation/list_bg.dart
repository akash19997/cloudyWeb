import 'package:flutter/material.dart';

import '../../../core/constants/image/image_constant.dart';
import '../../../core/constants/utils/size_utils.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../widgets/custom_image.dart';

// ignore: must_be_immutable
class ListbgItemWidget extends StatelessWidget {
  ListbgItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgBg,
              height: 45.00,
              width: 45.00,
              radius: BorderRadius.circular(
                32.00,
              ),
            ),
            Text(
              "Polyester",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoRegular12Gray90001,
            ),
          ],
        ),
      ),
    );
  }
}
