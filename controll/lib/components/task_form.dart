import 'package:flutter/material.dart';

class TaskForm extends StatelessWidget {
  TaskForm({Key? key, required this.onSubmit}) : super(key: key);

  final hoursController = TextEditingController();
  final videosController = TextEditingController();
  final placementsController = TextEditingController();
  final visitsController = TextEditingController();
  final studiesController = TextEditingController();

  final void Function(DateTime hoursWorked, int videos, int placements,
      int visits, int studies, DateTime date) onSubmit;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(children: [
          TextField(
            controller: hoursController,
            decoration: const InputDecoration(labelText: 'Hours'),
          ),
          TextField(
            controller: videosController,
            decoration: const InputDecoration(labelText: 'Videos'),
          ),
          TextField(
            controller: placementsController,
            decoration: const InputDecoration(labelText: 'Placements'),
          ),
          TextField(
            controller: visitsController,
            decoration: const InputDecoration(labelText: 'Return Visits'),
          ),
          TextField(
            controller: studiesController,
            decoration: const InputDecoration(labelText: 'Studies'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  final h = DateTime(
                      0, 0, 0, int.tryParse(hoursController.text) ?? 0, 0);
                  final v = int.tryParse(videosController.text) ?? 0;
                  final p = int.tryParse(placementsController.text) ?? 0;
                  final r = int.tryParse(visitsController.text) ?? 0;
                  final s = int.tryParse(studiesController.text) ?? 0;
                  final d = DateTime.now();

                  onSubmit(h, v, p, r, s, d);
                },
                style: TextButton.styleFrom(
                    primary: Colors.purple,
                    // backgroundColor: Colors.black,
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Verdana',
                    )),
                child: const Text('Save'),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
