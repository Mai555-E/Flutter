import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import '../../../domain/note_model.dart';
import '../resources/constant.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesState());

  List<NoteModel>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);

    notes = notesBox.values.toList();
    emit(NotesState());
  }
}

class NotesState {}
