class Task {
  String name;
  bool isDone = false;

  Task({required this.name, required  this.isDone});

 void isMissionDone() {
    isDone = !isDone;
  }
}
