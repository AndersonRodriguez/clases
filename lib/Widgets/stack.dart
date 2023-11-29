import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Stack',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      // body: Stack(
      //   children: [
      //     Align(
      //       alignment: Alignment.bottomCenter,
      //       child: Container(
      //         color: Colors.teal,
      //         width: 100.0,
      //         height: 100.0,
      //       ),
      //     ),
      //     Align(
      //       alignment: Alignment.topRight,
      //       child: Container(
      //         color: Colors.lime,
      //         width: 100.0,
      //         height: 100.0,
      //       ),
      //     ),
      //     Positioned(
      //       top: 70.0,
      //       left: 30.0,
      //       child: Container(
      //         color: Colors.indigo,
      //         width: 100.0,
      //         height: 100.0,
      //       ),
      //     ),
      //   ],
      // ),
      body: Center(
        child: Container(
          color: Colors.purple,
          width: 200,
          height: 200,
          padding: const EdgeInsets.all(12.0),
          child: const Stack(
            children: [
              Text('N'),
              Align(
                alignment: Alignment.topRight,
                child: Text('Top 10'),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text('Nuevos capitulos'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
