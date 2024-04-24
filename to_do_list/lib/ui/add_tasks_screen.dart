import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallBack;
  AddTaskScreen(this.addTaskCallBack, {super.key});

  String? newTaskTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(height: 12),
          Text(
            "6".tr,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.indigo[400]),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onSubmitted: (newText) {
              newTaskTitle = newText;
            },
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          const SizedBox(height: 15),
          TextButton(
            onPressed: () {
              addTaskCallBack(newTaskTitle);
              Get.snackbar("4".tr, "3".tr);
            },
            style: TextButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.teal[400], padding: const EdgeInsets.symmetric(horizontal: 25)),
            child: Text("5".tr, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}
