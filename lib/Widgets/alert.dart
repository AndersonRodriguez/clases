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
      title: 'Alert',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                showAlert(context, 'Esta seguro?', 'Pienselo');
              },
              child: const Text('Alert'),
            ),
            ElevatedButton(
              onPressed: () {
                showCupertinoAlert(context, 'Esta seguro?', 'Pienselo');
              },
              child: const Text('Cupertino Alert'),
            ),
          ],
        ),
      ),
    );
  }
}

void showAlert(BuildContext context, String title, String subtitle) {
  var alertDialog = AlertDialog(
    title: Text(title),
    content: Text(subtitle),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('No'),
      ),
      TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Si'),
      )
    ],
  );

  showDialog(
    context: context,
    builder: (context) => alertDialog,
  );
}

void showCupertinoAlert(BuildContext context, String title, String subtitle) {
  var cupertinoDialog = CupertinoAlertDialog(
    title: Text(title),
    content: Text(subtitle),
    actions: [
      CupertinoButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('No'),
      ),
      CupertinoButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Si'),
      )
    ],
  );

  showDialog(
    context: context,
    builder: (context) => cupertinoDialog,
  );
}
