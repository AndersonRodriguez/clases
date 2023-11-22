import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Rutas',
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primera pantalla'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => const SecondScreen(),
            //   ),
            // );
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SecondScreen(),
              ),
            );
          },
          child: const Text('Ir a segunda'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda pantalla'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.of(context).pop();
            Navigator.pop(context);
          },
          child: const Text('Volver'),
        ),
      ),
    );
  }
}
