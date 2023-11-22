import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Estados',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SinEstado(),
              ConEstado(),
            ],
          ),
        ),
      ),
    );
  }
}

class SinEstado extends StatelessWidget {
  const SinEstado({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      padding: const EdgeInsets.all(20.0),
      child: const Center(
        child: Text('Sin Estado'),
      ),
    );
  }
}

class ConEstado extends StatefulWidget {
  const ConEstado({super.key});

  @override
  State<StatefulWidget> createState() => Estado();
}

class Estado extends State<ConEstado> {
  bool? active;

  @override
  void initState() {
    super.initState();
    active = false;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          active = !active!;
        });
      },
      child: Container(
        color: active! ? Colors.blue : Colors.grey,
        padding: const EdgeInsets.all(20.0),
        child: const Center(
          child: Text('Con Estado'),
        ),
      ),
    );
  }
}
