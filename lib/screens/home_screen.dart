import 'package:clases/common/custom_card.dart';
import 'package:clases/models/person.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Person> people = [
    Person('Anderson', 'Ingeniero', 28),
    Person('Pancho', 'Desarrollador', 32),
  ];

  // people.remove()

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: people.length,
          itemBuilder: (context, index) => CustomCard(people[index]),
        ),
      ),
    );
  }
}
