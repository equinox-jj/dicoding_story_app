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

    return Scaffold(
      appBar: AppBar(
        // title: Text(data.name ?? ''),
        title: const Text('Detail'),
      ),
      body: const Column(
        children: [
          // Text(data.description ?? ''),
          Text('Story Detail'),
        ],
      ),
    );
  }
}
