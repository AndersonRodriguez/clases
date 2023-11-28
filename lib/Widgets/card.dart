import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Person {
  String name, description;
  int age;

  Person(this.name, this.description, this.age);
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card',
      home: ListScreen(),
    );
  }
}

class ListScreen extends StatelessWidget {
  ListScreen({super.key});

  List<Person> people = [
    Person('Anderson', 'Ingeniero', 28),
    Person('Pancho', 'Desarrollador', 32),
    Person('Juan', 'QA', 21),
    Person('Luis', 'Desarrollador', 50),
    Person('Sergio', 'Desarrollador', 15),
    Person('Carlos', 'Desarrollador', 46),
    Person('Christian', 'Desarrollador', 70),
  ];

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
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(person),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.green,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
