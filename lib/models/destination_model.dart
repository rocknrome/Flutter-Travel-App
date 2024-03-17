import 'package:flutter/material.dart';

class Destination extends StatelessWidget {
  const Destination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel App'),
      ),
      body: const Center(
        child: Text('Welcome to the Travel App!'),
      ),
    );
  }
}