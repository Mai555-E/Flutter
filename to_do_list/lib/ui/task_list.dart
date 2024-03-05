import 'package:flutter/material.dart';
import 'package:to_do_list/ui/task_tile.dart';

import '../data/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  TaskList(this.tasks);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (context, index) => TaskTile(
            taskTitle: widget.tasks[index].name,
            isChanged: widget.tasks[index].isDone,
            checkBoxChange: (newValue) {
              setState(() {
                //TODO change the setstate to taskTile
                widget.tasks[index].isMissionDone();
                widget.tasks.removeAt(index);
              });
            }));
  }
}
