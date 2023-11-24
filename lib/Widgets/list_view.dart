import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView',
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  final List<int> colorCode = [600, 500, 100];
  final List<String> names = ['Anderson', 'Pancho', 'Pedro'];

  Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (context, index) => Text('Nombre: ${names[index]}'),
          separatorBuilder: (context, index) => const Divider(
            color: Colors.red,
            height: 12.0,
            thickness: 3.0,
          ),
          itemCount: names.length,
        ),

        // child: ListView.builder(
        //   scrollDirection: Axis.horizontal,
        //   itemCount: colorCode.length,
        //   itemBuilder: (context, index) {
        //     return Container(
        //       height: 50.0,
        //       width: 500.0,
        //       color: Colors.amber[colorCode[index]],
        //     );
        //   },
        // ),

        // child: ListView(
        //   children: [
        //     const ListTile(
        //       leading: Icon(Icons.phone),
        //       title: Text('Main Title'),
        //       subtitle: Text('SubTitle'),
        //       trailing: Icon(Icons.shopping_cart),
        //     ),
        //     Container(
        //       height: 300,
        //       width: 200,
        //       color: Colors.red,
        //     ),
        //     const ListTile(
        //       leading: Icon(Icons.phone),
        //       title: Text('Main Title'),
        //       subtitle: Text('SubTitle'),
        //       trailing: Icon(Icons.shopping_cart),
        //     ),
        //     const ListTile(
        //       leading: Icon(Icons.phone),
        //       title: Text('Main Title'),
        //       subtitle: Text('SubTitle'),
        //       trailing: Icon(Icons.shopping_cart),
        //     ),
        //     Container(
        //       height: 300,
        //       width: 200,
        //       color: Colors.red,
        //     ),
        //     const ListTile(
        //       leading: Icon(Icons.phone),
        //       title: Text('Main Title'),
        //       subtitle: Text('SubTitle'),
        //       trailing: Icon(Icons.shopping_cart),
        //     ),
        //     const ListTile(
        //       leading: Icon(Icons.phone),
        //       title: Text('Main Title'),
        //       subtitle: Text('SubTitle'),
        //       trailing: Icon(Icons.shopping_cart),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
