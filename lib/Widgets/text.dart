import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      home: Scaffold(
        body: Center(
          child: SizedBox(
            height: 150.0,
            width: 300.0,
            child: Text(
              'Un Texto ' * 30,
              // textDirection: TextDirection.ltr,
              textAlign: TextAlign.justify,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
                decorationColor: Colors.blue,
                decorationThickness: 1,
                decorationStyle: TextDecorationStyle.wavy,
                letterSpacing: 4,
                wordSpacing: 4,
                backgroundColor: Colors.amber,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    offset: Offset(3.0, 3.0),
                    blurRadius: 2.0,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
