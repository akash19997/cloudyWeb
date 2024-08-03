import 'package:flutter/material.dart';
import 'package:gerywhite/core/constants/color/color_constant.dart';

class SnackBarHelperData {
  void showSnackBar({
    required BuildContext context,
    required String snackBarText,
  }) {
    final snackBar = SnackBar(
      content: Text(snackBarText
         ),
      backgroundColor: ColorConstant.pink700Primary,
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
