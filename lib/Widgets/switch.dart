import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Switch',
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
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch'),
      ),
      body: Row(
        children: [
          Switch(
            value: value,
            activeColor: Colors.red,
            activeTrackColor: Colors.green,
            inactiveThumbColor: Colors.blue,
            inactiveTrackColor: Colors.amber,
            onChanged: (val) {
              setState(() {
                value = val;
              });
            },
          ),
          Text('Valor: $value')
        ],
      ),
    );
  }
}
