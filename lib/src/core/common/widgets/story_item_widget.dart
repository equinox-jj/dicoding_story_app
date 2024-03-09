import 'package:cached_network_image/cached_network_image.dart';
import '../constants/constants.dart';
import '../utils/ext/date_time_ext.dart';
import 'package:flutter/material.dart';

class StoryItemWidget extends StatelessWidget {
  final double? elevation;
  final double marginH;
  final double marginV;
  final Function()? onTap;
  final String? imageUrl;
  final double? imageWidth;
  final double? imageHeight;
  final BoxFit? fit;
  final String? username;
  final DateTime? time;
  final DateTime? date;
  final String? description;
  final String? heroTag;

  const StoryItemWidget({
    super.key,
    this.elevation = 4.0,
    this.marginH = 10.0,
    this.marginV = 5.0,
    this.fit = BoxFit.fill,
    this.onTap,
    this.imageUrl,
    this.imageWidth,
    this.imageHeight,
    this.username,
    this.time,
    this.date,
    this.description,
    this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      margin: EdgeInsets.symmetric(
        horizontal: marginH,
        vertical: marginV,
      ),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            heroTag?.isNotEmpty == true
                ? Hero(
                    tag: heroTag ?? '',
                    child: CachedNetworkImage(
                      imageUrl: imageUrl ?? '',
                      width: imageWidth,
                      height: imageHeight,
                      fit: fit,
                      placeholder: (_, __) => Image.asset(
                        Constants.PLACEHOLDER_IMAGE,
                        width: imageWidth,
                        height: imageHeight,
                        fit: fit,
                      ),
                      errorWidget: (_, __, ___) => Image.asset(
                        Constants.ERROR_IMAGE,
                        width: imageWidth,
                        height: imageHeight,
                        fit: fit,
                      ),
                    ),
                  )
                : CachedNetworkImage(
                    imageUrl: imageUrl ?? '',
                    width: imageWidth,
                    height: imageHeight,
                    fit: fit,
                    placeholder: (_, __) => Image.asset(
                      Constants.PLACEHOLDER_IMAGE,
                      width: imageWidth,
                      height: imageHeight,
                      fit: fit,
                    ),
                    errorWidget: (_, __, ___) => Image.asset(
                      Constants.ERROR_IMAGE,
                      width: imageWidth,
                      height: imageHeight,
                      fit: fit,
                    ),
                  ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 8.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          username ?? '',
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17.0,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 0,
                        child: Text(
                          time?.formatTime() ?? '',
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    date?.formatDate() ?? '',
                    style: const TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 11.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    description ?? '',
                    maxLines: 3,
                    style: const TextStyle(
                      fontSize: 14.0,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
