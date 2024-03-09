import 'package:flutter/material.dart';

class RadioButtonWidget<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final Function(T? value)? onChanged;
  final Widget? secondary;
  final String? title;
  final int? maxLines;

  const RadioButtonWidget({
    super.key,
    required this.value,
    this.groupValue,
    this.onChanged,
    this.maxLines = 2,
    this.secondary,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return RadioListTile.adaptive(
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
      visualDensity: VisualDensity.compact,
      dense: true,
      secondary: secondary,
      title: Text(
        title ?? '',
        maxLines: maxLines,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12.0,
        ),
      ),
    );
  }
}
