import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(text: 'teste1'),
    Task(text: 'teste2'),
    Task(text: 'teste3'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          text: tasks[index].text,
          isChecked: tasks[index].isDone,
          onChanged: (bool _newCheckboxValue) {
            setState(() {
              tasks[index].toggleIsDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
