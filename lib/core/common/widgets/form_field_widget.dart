import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormFieldWidget extends StatelessWidget {
  final Function(String value)? onChanged;
  final int? maxLines;
  final List<TextInputFormatter>? textInputFormatter;
  final TextCapitalization textCapitalization;
  final bool obscureText;
  final Color? formColor;
  final bool? filled;
  final String? hintText;
  final Icon? preffixIcon;
  final Icon? suffixIcon;
  final String? Function(String? value)? validator;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final double? fontSize;
  final FontWeight? fontWeight;

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
    this.keyboardType = TextInputType.none,
    this.textInputAction = TextInputAction.none,
    this.fontSize = 12.0,
    this.fontWeight = FontWeight.w500,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      inputFormatters: textInputFormatter,
      textCapitalization: textCapitalization,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        fillColor: formColor,
        filled: filled,
        hintText: hintText,
        prefixIcon: preffixIcon,
        suffixIcon: suffixIcon,
        isDense: true,
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
