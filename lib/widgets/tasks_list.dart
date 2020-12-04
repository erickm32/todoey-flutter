import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: (context, index) {
          Task task = taskData.tasks[index];
          return TaskTile(
            onLongPressCallback: () => taskData.removeTask(task),
            text: task.text,
            isChecked: task.isDone,
            onChanged: (bool _newCheckboxValue) {
              taskData.toggleTask(task);
            },
          );
        },
        itemCount: taskData.tasksCount,
      ),
    );
  }
}
