import 'package:flutter/material.dart';

class ListStoryPage extends StatelessWidget {
  const ListStoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Story Page'),
      ),
      body: const Center(
        child: Text('Story List'),
      ),
    );
  }
}
