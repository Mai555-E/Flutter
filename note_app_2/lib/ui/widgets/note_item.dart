import 'package:flutter/material.dart';
import 'package:note_app_2/ui/resources/constant.dart';
import 'package:note_app_2/ui/edit_note_screen.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: ((_) => const EditNoteScreen()))),
      child: Container(
        decoration: BoxDecoration(color: const Color(color), borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 0, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                  title: const Text('Flutter Tips', style: TextStyle(color: Colors.black, fontSize: 25)),
                  subtitle: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Text('Build your career with Mai Emad', style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5), fontSize: 18))),
                  trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.delete, color: Colors.black, size: 24))),
              const Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: Text('December 2 , 2023', style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5), fontSize: 15)))
            ],
          ),
        ),
      ),
    );
  }
}
