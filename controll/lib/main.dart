import 'package:intl/intl.dart';

import '/models/task.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const ControllApp());
}

class ControllApp extends StatelessWidget {
  const ControllApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final _taks = [
    Tasks(
      hoursWorked: DateTime(0, 0, 0, 2, 30),
      videos: 1,
      placements: 0,
      visits: 0,
      studies: 0,
      date: DateTime.now(),
    ),
    Tasks(
      hoursWorked: DateTime(0, 0, 0, 1, 0),
      videos: 5,
      placements: 1,
      visits: 2,
      studies: 1,
      date: DateTime(2022, 9, 3),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Controll'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            child: const Card(
              color: Color.fromARGB(255, 28, 1, 32),
              child: Text('Gráfico',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ),
          ),
          Column(
            children: _taks.map((e) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 10,
                      ),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.purple,
                        width: 3,
                      )),
                      child: Text(
                        e.date.day.toString().padLeft(2, '0'),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            'Hours: ${DateFormat('HH:mm').format(e.hoursWorked)}'),
                        Text('Videos: ${e.videos}'),
                        Text('Placements: ${e.placements}'),
                        Text('Visits: ${e.visits}'),
                        Text('Studies: ${e.studies}'),
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          ),
          Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(children: [
                const TextField(
                  decoration: InputDecoration(labelText: 'Hours'),
                ),
                const TextField(
                  decoration: InputDecoration(labelText: 'Videos'),
                ),
                const TextField(
                  decoration: InputDecoration(labelText: 'Placements'),
                ),
                const TextField(
                  decoration: InputDecoration(labelText: 'Visits'),
                ),
                const TextField(
                  decoration: InputDecoration(labelText: 'Studies'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    TextButton(
                        onPressed: null,
                        child: Text(
                          'Save',
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
