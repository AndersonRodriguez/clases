import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'TextField',
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
  String name = '';
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    textEditingController.text = 'Anderson Rodriguez';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: 220.0,
                child: TextField(
                  keyboardType: TextInputType.text,
                  autocorrect: true,
                  maxLength: 10,
                  // obscureText: true,
                  cursorColor: Colors.pink,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.blue,
                  ),
                  textInputAction: TextInputAction.search,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Escribir',
                    // border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(7.0),
                      ),
                      borderSide: BorderSide(color: Colors.pink),
                    ),
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
              ),
              const SizedBox(height: 20.0),
              Text('Name: $name'),
              SizedBox(
                width: 220.0,
                child: TextField(
                  controller: textEditingController,
                ),
              ),
              const SizedBox(height: 20.0),
              Text('Apellido: ${textEditingController.text}'),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  print(name);
                  print(textEditingController.text);
                },
                child: const Text('Imprimir'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
