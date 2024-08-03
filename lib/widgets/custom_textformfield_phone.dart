// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../core/helper/layout_helper.dart';
import '../core/theme/app_text_theme.dart';

class CustomPhoneNumber extends StatefulWidget {
  const CustomPhoneNumber(
      {Key? key,
      this.nameController,
      this.label,
      this.labelColor,
      this.validator,
      this.onSaved,
      this.onChanged,
      this.width,
      this.readOnly})
      : super(key: key);

  final TextEditingController? nameController;
  final String? label;
  final Color? labelColor;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final double? width;
  final bool? readOnly;
  @override
  _CustomPhoneNumberState createState() => _CustomPhoneNumberState();
}

class _CustomPhoneNumberState extends State<CustomPhoneNumber> {
  textFormField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: SizedBox(
        width: widget.width ?? LayoutHelper.getWidth(context, fraction: 0.50),
        child: TextFormField(
          readOnly: widget.readOnly ?? false,
          inputFormatters: [
            LengthLimitingTextInputFormatter(15),
          ],
          keyboardType: TextInputType.phone,
          obscureText: false,
          decoration: InputDecoration(
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(color: Colors.white)),
            labelText: widget.label,
            labelStyle: TextStyle(color: widget.labelColor),
            hintStyle: AppStyle.txtRobotoRegular14Gray400,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
            hintText: "Enter your phone number",
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(color: Colors.white)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
          ),
          validator: widget.validator,
          onSaved: widget.onSaved,
          onChanged: widget.onChanged,
          controller: widget.nameController,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return textFormField(context);
  }
}
