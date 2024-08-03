// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../core/constants/color/color_constant.dart';
import '../core/helper/layout_helper.dart';
import '../core/theme/app_text_theme.dart';

class CustomFormField extends StatefulWidget {
  const CustomFormField(
      {Key? key,
      this.nameController,
      this.label,
      this.labelColor,
      this.validator,
      this.onSaved,
      this.onChanged,
      this.width,
      this.height,
      this.hintText,
      this.suffixIcon,
      this.prefixIcon,
      this.keyboardType,
      this.readOnly,
      this.onTap,
      this.textColor})
      : super(key: key);

  final TextEditingController? nameController;
  final String? label;
  final Color? labelColor;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final double? width;
  final double? height;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final void Function()? onTap;
  final Color? textColor;
  @override
  _CustomFormFieldState createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  textFormField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0.0, right: 0.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.0),
        ),
        height: widget.height ?? 48,
        width: widget.width ?? LayoutHelper.getWidth(context, fraction: 0.85),
        child: TextFormField(
          style: TextStyle(
            color: widget.textColor ?? Colors.black,
          ),
          onTap: widget.onTap,
          readOnly: widget.readOnly ?? false,
          keyboardType: widget.keyboardType ?? TextInputType.text,
          controller: widget.nameController,
          obscureText: false,
          decoration: InputDecoration(
            errorStyle: const TextStyle(height: 0.10),
            isDense: true,
            suffixIcon: widget.suffixIcon,
            prefixIcon: widget.prefixIcon,
            fillColor: Colors.white,
            filled: true,
            hintText: widget.hintText ?? '--',
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3.0),
                borderSide: const BorderSide(color: Colors.red)),
            labelText: widget.label,
            labelStyle: TextStyle(color: widget.labelColor),
            hintStyle: AppStyle.txtRobotoRegular14Gray400,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(3.0),
              borderSide: BorderSide(
                color: ColorConstant.gray200,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3.0),
                borderSide: const BorderSide(color: Colors.red)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(3.0),
              borderSide: BorderSide(
                color: ColorConstant.gray200,
              ),
            ),
          ),
          validator: widget.validator,
          onSaved: widget.onSaved,
          onChanged: widget.onChanged,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return textFormField(context);
  }
}
