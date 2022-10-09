import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/task.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key, required this.tasks}) : super(key: key);

  final List<Tasks> tasks;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: SingleChildScrollView(
        child: Column(
          children: tasks.map((e) {
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
                      Text('Return Visits: ${e.returnVisits}'),
                      Text('Studies: ${e.studies}'),
                    ],
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
