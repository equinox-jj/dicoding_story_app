import 'package:cached_network_image/cached_network_image.dart';
import '../../../../core/common/utils/ext/date_time_ext.dart';
import 'package:flutter/material.dart';

import '../../../../core/common/constants/constants.dart';
import '../../data/datasource/remote/model/getstories/list_story_response.dart';

class StoryDetailPage extends StatelessWidget {
  final ListStoryResponse data;

  const StoryDetailPage({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            pinned: false,
            expandedHeight: h / 3,
            flexibleSpace: Hero(
              tag: data.photoUrl ?? '',
              child: CachedNetworkImage(
                imageUrl: data.photoUrl ?? '',
                fit: BoxFit.fill,
                placeholder: (context, url) => Image.asset(
                  Constants.PLACEHOLDER_IMAGE,
                  fit: BoxFit.fill,
                ),
                errorWidget: (_, __, ___) => Image.asset(
                  Constants.ERROR_IMAGE,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            title: const Text('Testing'),
          ),
          SliverList.list(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      data.createdAt?.formatDateAndTime() ?? '',
                      style: const TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 13.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      data.name ?? '',
                      maxLines: 2,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      data.description ?? '',
                      style: const TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );

    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text(data.name ?? ''),
    //   ),
    //   body: SingleChildScrollView(
    //     physics: const BouncingScrollPhysics(),
    //     child: Column(
    //       children: [
    //         Hero(
    //           tag: data.photoUrl ?? '',
    //           child: CachedNetworkImage(
    //             imageUrl: data.photoUrl ?? '',
    //             fit: BoxFit.fill,
    //             width: w,
    //             height: h / 3,
    //             placeholder: (context, url) => Image.asset(
    //               Constants.PLACEHOLDER_IMAGE,
    //               width: MediaQuery.sizeOf(context).width,
    //               height: 200.0,
    //               fit: BoxFit.fill,
    //             ),
    //           ),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.all(10.0),
    //           child: Column(
    //             children: [
    //               Text(
    //                 data.createdAt?.formatDateAndTime() ?? '',
    //                 style: const TextStyle(
    //                   fontWeight: FontWeight.w300,
    //                   fontSize: 13.0,
    //                 ),
    //               ),
    //               const SizedBox(height: 8.0),
    //               Text(
    //                 data.name ?? '',
    //                 maxLines: 2,
    //                 style: const TextStyle(
    //                   fontWeight: FontWeight.w600,
    //                   fontSize: 17.0,
    //                 ),
    //               ),
    //               const SizedBox(height: 8.0),
    //               Text(
    //                 data.description ?? '',
    //                 style: const TextStyle(
    //                   fontSize: 14.0,
    //                 ),
    //               ),
    //             ],
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
