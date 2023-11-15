import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container',
      home: Scaffold(
        body: Container(
          // Colores
          // color: Colors.green,
          // color: const Color(0xFF00AA22),
          // color: const Color.fromARGB(255, 255, 180, 100),
          // color: const Color.fromRGBO(100, 30, 255, .2),

          // Custom
          decoration: BoxDecoration(
              // color: const Color.fromRGBO(100, 30, 255, .2),
              color: Colors.blue,

              // Borde
              border: Border.all(
                color: Colors.red,
                width: 2.0,
                style: BorderStyle.solid,
              ),
              // borderRadius: BorderRadius.circular(24.0),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12.0),
                bottomRight: Radius.circular(12.0),
              ),
              // shape: BoxShape.circle,

              // Sombras
              boxShadow: const [
                BoxShadow(
                  color: Colors.black45,
                  offset: Offset(12.0, 12.0),
                  blurRadius: 8.0,
                ),
                BoxShadow(
                  color: Colors.yellow,
                  offset: Offset(-12.0, -12.0),
                  blurRadius: 8.0,
                )
              ]),

          // Tamaño
          width: 200.0,
          height: 200.0,

          // Margin
          // margin: const EdgeInsets.all(30.0),
          // margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 20.0),
          // margin: const EdgeInsets.fromLTRB(80.0, 70.0, 20.0, 10.0),
          margin: const EdgeInsets.only(top: 80.0, left: 40.0),

          // Padding
          padding: const EdgeInsets.all(30.0),
          // padding: const EdgeInsets.only(top: 12.0),

          // Transform
          transform: Matrix4.rotationZ(0.2),

          // Contenido
          child: const Text('Hola'),
        ),
      ),
    );
  }
}
