import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen One"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/ScreenTwo');
            },
            child: const Text("Go Back")),
      ),
    );
  }
}
