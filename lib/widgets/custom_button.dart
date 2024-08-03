import 'package:flutter/material.dart';
import '../core/constants/enum/custom_app_button_enum.dart';
import 'custom_outline_button.dart';
import 'custom_primary_button.dart';

class AppButton extends StatelessWidget {
  final void Function()? onPressed;
  final void Function()? onPressedOutline;
  final Widget child;
  final AppButtonType buttonType;
  final double? buttonHeight;
  final double? buttonWidth;
  final Color? buttonColor;
  final Widget? leftIcon;
  final Color? primaryButtonColor;
  final Color? outlineBorderColor;
  final bool? withoutIcon;
  const AppButton({
    Key? key,
    this.onPressed,
    required this.child,
    required this.buttonType,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonColor,
    this.leftIcon,
    this.primaryButtonColor,
    this.outlineBorderColor,
    this.withoutIcon,
    this.onPressedOutline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (buttonType) {
      case AppButtonType.PRIMARY:
        return PrimaryButton(
          onTap: onPressed,
          label: child,
          buttonHeight: buttonHeight,
          buttonWidth: buttonWidth,
          buttonColor: primaryButtonColor,
        );
      case AppButtonType.TEXT:
        return TextButton(onPressed: onPressed, child: child);
      case AppButtonType.OUTLINE:
        return AppOutlineButton(
          borderColor: outlineBorderColor,
          withoutIcon: withoutIcon ?? true,
          onTap: onPressedOutline,
          label: child,
          leftIcon: leftIcon,
          buttonHeight: buttonHeight,
          buttonWidth: buttonWidth,
        );
    }
  }
}
