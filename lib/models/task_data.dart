import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [Task(text: 'teste')];

  int get tasksCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void toggleTask(Task task) {
    task.toggleIsDone();
    notifyListeners();
  }
}
