import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../data/datasource/remote/model/getstories/list_story_response.dart';

class StoryDetailPage extends StatelessWidget {
  final ListStoryResponse data;

  const StoryDetailPage({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        // title: Text(data.name ?? ''),
        title: const Text('Detail'),
      ),
      body: Column(
        children: [
          Hero(
            tag: data.photoUrl ?? '',
            child: CachedNetworkImage(
              imageUrl: data.photoUrl ?? '',
              fit: BoxFit.fill,
              width: h,
              height: 300.0,
              placeholder: (context, url) => Image.asset(
                'assets/images/placeholder.png',
                width: MediaQuery.sizeOf(context).width,
                height: 200.0,
                fit: BoxFit.fill,
              ),
            ),
          ),
          // Text(data.description ?? ''),
          const Text('Story Detail'),
        ],
      ),
    );
  }
}
