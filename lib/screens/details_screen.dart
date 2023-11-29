import 'package:flutter/material.dart';

import '../models/person.dart';

class DetailsScreen extends StatelessWidget {
  final Person _person;

  const DetailsScreen(this._person, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              children: [
                Image.asset('assets/loro.png'),
                const SizedBox(
                  height: 20.0,
                ),
                Text(_person.name),
                const SizedBox(
                  height: 20.0,
                ),
                Text(_person.description),
                const SizedBox(
                  height: 20.0,
                ),
                Text('Edad: ${_person.age}'),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Volver'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
