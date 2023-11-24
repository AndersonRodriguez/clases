import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ListTile',
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text('Main Title'),
              subtitle: const Text('SubTitle'),
              trailing: const Icon(Icons.shopping_cart),
              dense: false,
              selected: true,
              enabled: true,
              onTap: () {
                print('OnTab');
              },
            ),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('Main Title'),
              subtitle: Text('SubTitle'),
              trailing: Icon(Icons.shopping_cart),
            )
          ],
        ),
      ),
    );
  }
}
