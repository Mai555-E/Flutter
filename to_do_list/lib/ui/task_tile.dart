import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/data/task.dart';
import 'package:to_do_list/ui/second_page.dart';

class TaskTile extends StatelessWidget {
  
  final bool isChanged;
  final String taskTitle;

  final void Function(bool?) checkBoxChange;
  const TaskTile({super.key, required this.isChanged, required this.taskTitle, required this.checkBoxChange, });

  @override
  
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {
          Get.to( ()=>SecondPage());
        },
        title: Text(taskTitle, style: TextStyle(decoration: (isChanged) ? TextDecoration.lineThrough : null)),
        trailing: Checkbox(activeColor: Colors.teal[400], value: isChanged, onChanged: checkBoxChange));
  }
}
