import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app_2/ui/resources/constant.dart';
import 'app/app.dart';
import 'domain/note_model.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NoteApp());
}
