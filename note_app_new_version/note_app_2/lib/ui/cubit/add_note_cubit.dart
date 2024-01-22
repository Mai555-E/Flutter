import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import '../../../domain/note_model.dart';
import '../resources/constant.dart';



class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteState());

  Color color = const Color(0xffAC3931);
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteState());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteState());
    } catch (e) {
      emit(AddNoteState());
    }
  }
}


class AddNoteState{}