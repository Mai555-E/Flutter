import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChanged;
  final String taskTitle;

  final void Function(bool?) checkBoxChange;
  const TaskTile({super.key, required this.isChanged, required this.taskTitle, required this.checkBoxChange});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(taskTitle, style: TextStyle(decoration: (isChanged) ? TextDecoration.lineThrough : null)),
        trailing: Checkbox(activeColor: Colors.teal[400], value: isChanged, onChanged: checkBoxChange));
  }
}
