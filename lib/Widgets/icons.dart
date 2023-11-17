import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Icons',
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Icon(
              Icons.twenty_four_mp,
              size: 80.0,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
