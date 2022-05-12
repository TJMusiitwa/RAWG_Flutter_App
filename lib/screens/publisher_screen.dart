import 'package:flutter/material.dart';

class PublishersScreen extends StatelessWidget {
  const PublishersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Publishers'),
      ),
      body: const Center(
        child: Text('Publishers'),
      ),
    );
  }
}
