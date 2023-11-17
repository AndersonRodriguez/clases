import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image',
      home: Scaffold(
        body: Center(
          child: Container(
            width: 320.0,
            height: 320.0,
            color: Colors.yellow,
            // Imagen desde la app
            // child: Image.asset(
            //   'assets/loro.png',
            //   // fit: BoxFit.cover,
            //   scale: 8.0,
            //   alignment: Alignment.topLeft,
            //   repeat: ImageRepeat.repeat,
            // ),
            // Imagenes de internet
            child: Image.network(
              'https://cdn.pixabay.com/photo/2023/08/16/23/49/snail-8195174_1280.jpg',
              scale: 5.0,
            ),
          ),
        ),
      ),
    );
  }
}
