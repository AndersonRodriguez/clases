import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
      color: Colors.blue,
    );

    return MaterialApp(
      title: 'Row',
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  'Uno',
                  style: style.copyWith(
                    color: Colors.red,
                  ),
                ),
                Text(
                  'Dos',
                  style: style.copyWith(
                    color: Colors.green,
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  'Tres',
                  style: style.copyWith(fontSize: 40.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
