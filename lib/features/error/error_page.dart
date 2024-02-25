import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Error Screen'),
      ),
      body: const Center(
        child: Text('Error Page Not Found.'),
      ),
    );
  }
}
