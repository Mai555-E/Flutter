import 'package:flutter/material.dart';
import 'package:get/get.dart';
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

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    print(tasks);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "1".tr,
          style: const TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal[400],
        actions: [
          IconButton(
            icon: const Icon(
              Icons.light_mode,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              if (Get.isDarkMode) {
                Get.changeTheme(ThemeData.light());
                const Icon(Icons.light_mode, color: Colors.black);
              } else {
                Get.changeTheme(ThemeData.dark());
                const Icon(Icons.dark_mode, color: Colors.white);
              }
            },
          ),
        ],
      ),
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
      drawer: const Drawer(backgroundColor: Colors.white, surfaceTintColor: Colors.black),
     
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 50),
        child: Column(
          key: scaffoldKey,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${tasks.length} Tasks".tr, style: const TextStyle(color: Colors.white, fontSize: 18)),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: Colors.white),
                child: TaskList(tasks),
              ),
            )
          ],
        ),
      ),
    );
  }
}
