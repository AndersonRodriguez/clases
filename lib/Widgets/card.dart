import 'package:flutter/material.dart';

void main() {
  runApp(Screen());
}

class Person {
  String name, description;
  int age;

  Person(this.name, this.description, this.age);
}

class Screen extends StatelessWidget {
  Screen({super.key});

  List<Person> people = [
    Person('Anderson', 'Ingeniero', 28),
    Person('Pancho', 'Desarrollador', 32),
    Person('Pedro', 'QA', 43),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: people.map((person) => CustomCard(person)).toList(),
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  Person person;

  CustomCard(this.person, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12.0),
      color: Colors.amber,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      shadowColor: Colors.blue,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/loro.png'),
                    ),
                  ),
                  child: const Align(
                    child: Text(
                      'Loro',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(person.name)
              ],
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(person.description),
                  Text('Edad ${person.age}'),
                ],
              ),
            ),
            const SizedBox(width: 8),
            const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                Icon(
                  Icons.edit,
                  color: Colors.green,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
