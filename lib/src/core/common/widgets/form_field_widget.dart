import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final Function(String value)? onChanged;
  final int? maxLines;
  final int? maxLength;
  final List<TextInputFormatter>? textInputFormatter;
  final TextCapitalization textCapitalization;
  final bool obscureText;
  final Color? formColor;
  final bool? filled;
  final String? hintText;
  final Widget? preffixIcon;
  final Widget? suffixIcon;
  final String? Function(String? value)? validator;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final double? fontSize;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry? contentPadding;

  const FormFieldWidget({
    super.key,
    this.onChanged,
    this.maxLines,
    this.textInputFormatter,
    this.textCapitalization = TextCapitalization.none,
    this.obscureText = false,
    this.formColor = Colors.white,
    this.filled = true,
    this.hintText,
    this.preffixIcon,
    this.suffixIcon,
    this.validator,
    this.keyboardType,
    this.textInputAction,
    this.fontSize = 12.0,
    this.fontWeight = FontWeight.w500,
    this.controller,
    this.maxLength,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      maxLength: maxLength,
      inputFormatters: textInputFormatter,
      textCapitalization: textCapitalization,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        fillColor: formColor,
        filled: filled,
        hintText: hintText,
        prefixIcon: preffixIcon,
        suffixIcon: suffixIcon,
        isDense: true,
        contentPadding: contentPadding,
      ),
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      onChanged: onChanged,
      validator: validator,
    );
  }
}
