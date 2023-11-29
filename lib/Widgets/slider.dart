import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Slider',
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
  double rating = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 300.0,
            child: Slider(
              value: rating,
              min: 10,
              max: 100,
              label: '$rating',
              divisions: 4,
              activeColor: Colors.red,
              thumbColor: Colors.green,
              onChanged: (value) {
                setState(() {
                  rating = value;
                });
              },
            ),
          ),
          Text('$rating')
        ],
      ),
    );
  }
}
