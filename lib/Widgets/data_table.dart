import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DataTable',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> motos = ['Suzuki', '2010', '1500'];
  final List<String> columns = ['Moto', 'Modelo', 'Precio'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataTable'),
      ),
      body: Center(
        child: DataTable(
          // columns: const [
          //   DataColumn(
          //     label: Text('Moto'),
          //   ),
          //   DataColumn(
          //     label: Text('Modelo'),
          //   ),
          //   DataColumn(
          //     label: Text('Precio'),
          //   ),
          // ],
          columns: columns.map((c) => DataColumn(label: Text(c))).toList(),
          rows: const [
            DataRow(
              cells: [
                DataCell(Text('Suzuki')),
                DataCell(Text('2010')),
                DataCell(Text('1000')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('Yamaha')),
                DataCell(Text('2023')),
                DataCell(Text('2000')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
