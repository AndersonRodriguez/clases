import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigator Bar',
      home: Screen(),
    );
  }
}

class Screen extends StatefulWidget {
  Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetsBody = [
    Text('Index 0: Home'),
    Text('Index 1: Alarma'),
    Text('Index 2: Burbujas'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigator Bar'),
      ),
      body: Center(
        child: _widgetsBody.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        iconSize: 30.0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.amber,
        unselectedFontSize: 10.0,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.access_alarm,
            ),
            label: 'Alarma',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bubble_chart,
            ),
            label: 'Bubble',
          ),
        ],
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
