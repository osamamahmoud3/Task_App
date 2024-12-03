import 'package:flutter/material.dart';

import '../styles/colors.dart';

class AppTextFromField extends StatelessWidget {
  const AppTextFromField({
    super.key,
    this.enabledBorderradius,
    this.enabledcolor,
    this.focusedcolor,
    this.hintText,
    this.hintStyle,
    this.focusedBorderradius,
    this.obscureText,
    this.suffixIcon,
    this.controller,
    this.validator,
    this.prefixIcon,
    this.readOnly,
    this.label,
    this.onTap,
    this.keyboardType,
    this.maxLines,
  });
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  final BorderRadius? enabledBorderradius;
  final BorderRadius? focusedBorderradius;
  final Color? enabledcolor;
  final Color? focusedcolor;
  final String? hintText;
  final TextStyle? hintStyle;
  final bool? obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool? readOnly;
  final Widget? label;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly ?? false,
      maxLines: maxLines ?? 1,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      keyboardType: keyboardType,
      validator: validator ?? (value) {
        if (value == null || value.isEmpty) {
          return 'This Field is required';
        }
        return null;
      },
      onTap: onTap,
      decoration: InputDecoration(
          label: label,
          enabledBorder: OutlineInputBorder(
            borderRadius: enabledBorderradius ?? BorderRadius.circular(10),
            borderSide: BorderSide(
              color: enabledcolor ?? ColorsManger.lightGray,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: focusedBorderradius ?? BorderRadius.circular(10),
            borderSide: BorderSide(
              color: focusedcolor ?? ColorsManger.primaryColor,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: enabledBorderradius ?? BorderRadius.circular(10),
            borderSide: BorderSide(
              color: enabledcolor ?? Colors.red,
            ),
          ),
          hintText: hintText,
          hintStyle:
              hintStyle ?? const TextStyle(color: ColorsManger.lightGray),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          fillColor: Colors.white,
          filled: true),
      obscureText: obscureText ?? false,
    );
  }
}
