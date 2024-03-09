import 'dart:io';

import '../constants/constants.dart';
import 'package:flutter/material.dart';

class ImagePickerWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final String? imageFile;
  final BoxFit? fit;

  const ImagePickerWidget({
    super.key,
    this.width,
    this.height,
    this.imageFile,
    this.fit = BoxFit.fill,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
        image: imageFile?.isNotEmpty == true
            ? DecorationImage(
                image: FileImage(File(imageFile ?? '')),
                fit: fit,
              )
            : DecorationImage(
                image: const AssetImage(Constants.PLACEHOLDER_IMAGE),
                fit: fit,
              ),
      ),
    );
  }
}
