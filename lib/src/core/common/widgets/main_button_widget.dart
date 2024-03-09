import 'package:flutter/material.dart';

class MainButtonWidget extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final double borderRadius;
  const MainButtonWidget({
    super.key,
    this.onPressed,
    this.text = '',
    this.borderRadius = 10.0,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
      child: Text(text),
    );
  }
}