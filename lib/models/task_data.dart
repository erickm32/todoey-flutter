import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [Task(text: 'teste')];

  int get tasksCount {
    return tasks.length;
  }

  void addTask(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  void removeTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }

  void toggleTask(Task task) {
    task.toggleIsDone();
    notifyListeners();
  }
}
