import 'package:flutter/material.dart';

import '../core/constants/color/color_constant.dart';
import '../core/helper/layout_helper.dart';

class PrimaryButton extends StatelessWidget {
  final void Function()? onTap;
  final Widget label;
  final double? buttonHeight;
  final double? buttonWidth;
  final Color? buttonColor;

  const PrimaryButton({
    Key? key,
    this.onTap,
    required this.label,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonHeight ?? 49.00,
      width: buttonWidth ?? LayoutHelper.getWidth(context, fraction: 0.5),
      decoration: BoxDecoration(
          // border: Border.all(color: ColorConstant.black900, width: 1),
          color: ColorConstant.pink700Primary,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.70), blurRadius: 0)
          ]),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor ?? Colors.transparent,
              shadowColor: Colors.transparent),
          onPressed: onTap,
          child: label),
    );
  }
}
