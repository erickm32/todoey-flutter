class Task {
  String text;
  bool isDone;

  Task({this.text, this.isDone = false});

  void toggleIsDone() {
    isDone = !isDone;
  }
}
