import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Bottom Sheet',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      // barrierColor: Colors.blue,
      // backgroundColor: Colors.red,
      builder: (context) => Container(
        height: 600.0,
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Text('Prueba'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                _showModalBottomSheet(context);
              },
              child: const Text('Bottom Sheet'),
            ),
          ],
        ),
      ),
    );
  }
}
