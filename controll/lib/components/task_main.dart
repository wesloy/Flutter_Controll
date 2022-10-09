import 'package:flutter/material.dart';

import 'package:controll/components/task_form.dart';
import 'package:controll/components/task_list.dart';

import '../models/task.dart';

class TaskMain extends StatefulWidget {
  const TaskMain({Key? key}) : super(key: key);

  @override
  State<TaskMain> createState() => _TaskMainState();
}

class _TaskMainState extends State<TaskMain> {
  final _tasks = [
    Tasks(
      hoursWorked: DateTime(0, 0, 0, 2, 30),
      videos: 1,
      placements: 0,
      returnVisits: 0,
      studies: 0,
      date: DateTime(2022, 9, 2),
    ),
    Tasks(
      hoursWorked: DateTime(0, 0, 0, 1, 0),
      videos: 5,
      placements: 1,
      returnVisits: 2,
      studies: 1,
      date: DateTime(2022, 9, 3),
    ),
    Tasks(
      hoursWorked: DateTime(0, 0, 0, 1, 0),
      videos: 5,
      placements: 1,
      returnVisits: 2,
      studies: 1,
      date: DateTime(2022, 9, 4),
    ),
    Tasks(
      hoursWorked: DateTime(0, 0, 0, 1, 0),
      videos: 5,
      placements: 1,
      returnVisits: 2,
      studies: 1,
      date: DateTime(2022, 9, 5),
    ),
    Tasks(
      hoursWorked: DateTime(0, 0, 0, 1, 0),
      videos: 5,
      placements: 1,
      returnVisits: 2,
      studies: 1,
      date: DateTime(2022, 9, 6),
    ),
  ];

  _addTask(DateTime hoursWorked, int videos, int placements, int returnVisits,
      int studies, DateTime date) {
    final newTask = Tasks(
      hoursWorked: hoursWorked,
      videos: videos,
      placements: placements,
      returnVisits: returnVisits,
      studies: studies,
      date: date,
    );

    setState(() {
      _tasks.add(newTask);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TaskForm(
        onSubmit: _addTask,
      ),
      TaskList(tasks: _tasks),
    ]);
  }
}
