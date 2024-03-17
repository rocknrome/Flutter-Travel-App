import 'package:flutter/material.dart';

class Hotel extends StatelessWidget {
  const Hotel({Key? key}) : super(key: key);

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
