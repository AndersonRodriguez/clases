import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Date Time Picker',
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
  DateTime date1 = DateTime.now();
  TimeOfDay time1 = TimeOfDay.now();

  selectDate(BuildContext context) async {
    var picked = await showDatePicker(
        context: context,
        initialDate: date1,
        firstDate: DateTime(2020),
        lastDate: DateTime(2025),
        confirmText: 'Seleccionar',
        cancelText: 'Cancelar',
        selectableDayPredicate: (val) =>
            val.weekday == 5 || val.weekday == 6 ? false : true);

    if (picked != null && picked != date1) {
      setState(() {
        date1 = picked;
      });
    }
  }

  selectHour(BuildContext context) async {
    var picked = await showTimePicker(
      context: context,
      initialTime: time1,
    );

    if (picked != null && picked != time1) {
      setState(() {
        time1 = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Time Picker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              children: [
                Text('${date1.year}-${date1.month}-${date1.day}'),
                IconButton(
                  onPressed: () {
                    selectDate(context);
                  },
                  icon: const Icon(Icons.date_range),
                ),
              ],
            ),
            Row(
              children: [
                Text('${time1.hour}:${time1.minute}'),
                IconButton(
                  onPressed: () {
                    selectHour(context);
                  },
                  icon: const Icon(Icons.date_range),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
