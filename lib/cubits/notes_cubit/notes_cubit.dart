import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesInitial());
  fetchAllNotes() async {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      // List<NoteModel> notes = notesBox.values.toList();
      emit(NotesSuccess(notesBox.values.toList()));
    } catch (e) {
      emit(NotesFailure(errorMessage: e.toString()));
    }
  }
}
