import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallBack;
  AddTaskScreen(this.addTaskCallBack);

String? newTaskTitle;
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Column(
        children: [
          SizedBox(height: 12),
          Text(
            "Add Task",
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
          SizedBox(height: 15),
          TextButton(
            onPressed: () {
              addTaskCallBack(newTaskTitle);
            },
            style: TextButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.teal[400], padding: EdgeInsets.symmetric(horizontal: 25)),
            child: const Text("Add", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}
