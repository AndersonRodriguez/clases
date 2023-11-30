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
      title: 'Snackbar',
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
  _showSnackBar() {
    final snackBar = SnackBar(
      backgroundColor: Colors.blue,
      duration: const Duration(seconds: 3),
      content: const Row(
        children: [
          Icon(Icons.thumb_down),
          SizedBox(
            width: 10.0,
          ),
          Text('Compra realizada'),
        ],
      ),
      action: SnackBarAction(
        onPressed: () {
          print('Click en Snackbar');
        },
        label: 'Retornar',
        textColor: Colors.white,
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: _showSnackBar,
              child: const Text('Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}
