import 'package:flutter/material.dart';

class HelperFunction {
  static HelperFunction? _instance;

  HelperFunction._internal() {
    _instance = this;
  }

  factory HelperFunction() => _instance ?? HelperFunction._internal();

  static void snackBar({
    required BuildContext context,
    String? message,
    Duration duration = const Duration(seconds: 3),
    bool? showCloseIcon = true,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message ?? '',
          maxLines: 2,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        duration: duration,
        showCloseIcon: showCloseIcon,
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.horizontal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
