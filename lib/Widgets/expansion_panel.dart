import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Expansion panel',
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
  final List<MyItem> _items = [
    MyItem(isExpanded: true, header: 'Header 1', body: 'Body 1'),
    MyItem(isExpanded: false, header: 'Header 2', body: 'Body 2'),
    MyItem(isExpanded: true, header: 'Header 3', body: 'Body 3'),
    MyItem(isExpanded: false, header: 'Header 4', body: 'Body 4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            ExpansionPanelList(
              dividerColor: Colors.pink,
              expandedHeaderPadding: const EdgeInsets.all(12.0),
              expansionCallback: (index, isExpanded) {
                setState(() {
                  _items[index].isExpanded = !_items[index].isExpanded;
                });
              },
              children: _items
                  .map(
                    (item) => ExpansionPanel(
                      backgroundColor: Colors.green,
                      canTapOnHeader: true,
                      headerBuilder: (context, isExpanded) => Text(
                        item.header ?? '',
                        style: const TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      body: Text(item.body ?? ''),
                      isExpanded: item.isExpanded,
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class MyItem {
  bool isExpanded;
  String? header, body;

  MyItem({required this.isExpanded, this.header, this.body});
}
