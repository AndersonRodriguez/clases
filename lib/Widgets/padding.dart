import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Padding',
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Padding'),
        // ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Text',
              style: TextStyle(fontSize: 30.0),
            ),
          ),
        ),
      ),
    );
  }
}
