import 'package:flutter/material.dart';
import 'package:to_do_list/data/task.dart';
import 'package:to_do_list/ui/add_tasks_screen.dart';
import 'package:to_do_list/ui/task_list.dart';

import 'task_tile.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<Task> tasks = [
    Task(name: "go shopping", isDone: false),
    Task(name: "play a piano", isDone: false),
  ];

  @override
  Widget build(BuildContext context) {
    print(tasks);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: (context),
              builder: (context) => SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen((newTaskTitle) {
                        setState(() {
                          tasks.add(Task(name: newTaskTitle, isDone: false));
                          Navigator.pop(context);
                        });
                      }))));
        },
        backgroundColor: Colors.indigo[400],
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.teal[400],
      body: Padding(
        padding: const EdgeInsets.only(top: 60, right: 20, left: 20, bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(
                  Icons.playlist_add_check,
                  color: Colors.white,
                  size: 40,
                ),
                SizedBox(width: 20),
                Text(
                  "To Day DO",
                  style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Text("${tasks.length} Tasks", style: TextStyle(color: Colors.white, fontSize: 18)),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: Colors.white),
                child:TaskList(tasks),
              ),
            )
          ],
        ),
      ),
    );
  }
}
