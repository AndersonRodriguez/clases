import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expanded',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
                  height: 200.0,
                  child: const Center(
                    child: Text('Rojo'),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.green,
                  height: 50.0,
                  child: const Center(
                    child: Text('Verde'),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                  height: 70.0,
                  child: const Center(
                    child: Text('Azul'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
