import 'package:flutter/material.dart';

class CreatorsScreen extends StatelessWidget {
  const CreatorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Creators'),
      ),
      body: const Center(
        child: Text('Creators'),
      ),
    );
  }
}
