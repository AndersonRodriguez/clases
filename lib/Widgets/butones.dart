import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  List cities = ['Bogota', 'Cali', 'Medellin'];
  String citySelected = 'Bogota';

  @override
  Widget build(BuildContext context) {
    void choiceAction(value) {
      if (value == Item.Inbox) {
        print('Go to Inbox');
      }

      if (value == Item.Email) {
        print('Go to Email');
      }

      if (value == Item.Logout) {
        print('Go to Logout');
      }
    }

    return MaterialApp(
      title: 'Botones',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Botones'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.exit_to_app),
            ),
            PopupMenuButton(
              onSelected: choiceAction,
              itemBuilder: (BuildContext context) {
                return Item.choices.map((choice) {
                  return PopupMenuItem(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.home),
        ),
        body: SafeArea(
          child: Column(
            children: [
              const Center(
                child: Text(
                  'Botones',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
              TextButton(
                // style: ButtonStyle(
                //   backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                //   foregroundColor:
                //       MaterialStateProperty.all<Color>(Colors.green),
                // ),
                onPressed: () {
                  print('Click TextButton');
                },
                child: const Text('TextButton'),
              ),
              ElevatedButton(
                // style: ElevatedButton.styleFrom(foregroundColor: Colors.amber),
                onPressed: () {
                  print('Click ElevatedButton');
                },
                child: const Text('ElevatedButton'),
              ),
              OutlinedButton(
                onPressed: () {
                  print('OutlinedButton');
                },
                child: const Text('OutlinedButton'),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.home),
                label: const Text('Outeline'),
              ),
              IconButton(
                color: Colors.blue,
                tooltip: 'Eliminar',
                onPressed: () {},
                icon: const Icon(Icons.delete),
              ),
              ButtonBar(
                children: [
                  OutlinedButton(
                    onPressed: () {
                      print('OutlinedButton');
                    },
                    child: const Text('OutlinedButton'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      print('OutlinedButton');
                    },
                    child: const Text('OutlinedButton'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      print('OutlinedButton');
                    },
                    child: const Text('OutlinedButton'),
                  ),
                ],
              ),
              DropdownButton(
                value: citySelected,
                onChanged: (value) {
                  setState(() {
                    citySelected = value.toString();
                  });
                },
                items: cities
                    .map((city) => DropdownMenuItem(
                          value: city,
                          child: Text(city),
                        ))
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Item {
  static const Inbox = 'Inbox';
  static const Email = 'Email';
  static const Logout = 'Logout';

  static const List choices = [Inbox, Email, Logout];
}
