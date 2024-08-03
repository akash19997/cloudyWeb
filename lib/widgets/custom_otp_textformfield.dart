// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/constants/color/color_constant.dart';
import '../core/helper/layout_helper.dart';
import '../core/theme/app_text_theme.dart';

class AppTextFormField extends StatefulWidget {
  const AppTextFormField({
    Key? key,
    this.nameController,
    this.label,
    this.labelColor,
    this.validator,
    this.onSaved,
    this.onChanged,
    this.width,
    this.height,
    this.keyboardType,
    this.inputFormatters,
  }) : super(key: key);

  final TextEditingController? nameController;
  final String? label;
  final Color? labelColor;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final double? width;
  final double? height;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  @override
  _AppTextFormFieldState createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  textFormField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.0),
        ),
        height: widget.height ?? 48,
        width: widget.width ?? LayoutHelper.getWidth(context, fraction: 0.85),
        child: TextFormField(
          keyboardType: widget.keyboardType ?? TextInputType.text,
          //  keyboardType: TextInputType.phone,
          onFieldSubmitted: (_) =>
              FocusScope.of(context).unfocus(), // submit and hide keyboard

          inputFormatters: widget.inputFormatters,
          controller: widget.nameController,
          obscureText: false,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: '--',
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3.0),
                borderSide: const BorderSide(color: Colors.red)),
            labelText: widget.label,
            labelStyle: TextStyle(color: widget.labelColor),
            hintStyle: AppStyle.txtRobotoRegular14Gray400,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(3.0),
              borderSide: BorderSide(
                color: ColorConstant.whiteA700,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3.0),
                borderSide: const BorderSide(color: Colors.red)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(3.0),
              borderSide: BorderSide(
                color: ColorConstant.whiteA700,
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

extension Utility on BuildContext {
  void nextEditableTextFocus() {
    do {
      FocusScope.of(this).nextFocus();
    } while (
        FocusScope.of(this).focusedChild?.context?.widget is! EditableText);
  }
}
