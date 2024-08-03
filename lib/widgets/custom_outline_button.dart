// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../core/constants/color/color_constant.dart';
import '../core/helper/layout_helper.dart';

class AppOutlineButton extends StatelessWidget {
  final void Function()? onTap;
  final Widget label;
  final double? buttonHeight;
  final double? buttonWidth;
  final ButtonStyle? buttonColor;
  final Widget? leftIcon;
  final bool withoutIcon;
  final borderColor;
  const AppOutlineButton({
    Key? key,
    this.onTap,
    required this.label,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonColor,
    this.leftIcon,
    required this.withoutIcon,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: buttonHeight ?? 50.00,
        width: buttonWidth ?? LayoutHelper.getWidth(context, fraction: 0.5),
        child: (withoutIcon)
            ? OutlinedButton.icon(
                onPressed: onTap,
                icon: leftIcon ?? const Icon(Icons.add),
                label: label,
                style: buttonColor ??
                    ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side:
                                        const BorderSide(color: Colors.red)))),
              )
            : OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  side: BorderSide(
                    color: borderColor ?? ColorConstant.pink700Primary,
                  ),
                  // shape: StadiumBorder(),
                ),
                onPressed: onTap,
                child: label,
              ));
  }
}
