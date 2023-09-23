part of 'notes_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesInitial extends NotesCubitState {}

class NotesLoading extends NotesCubitState {}

class NotesSuccess extends NotesCubitState {
  final List<NoteModel> notes;

  NotesSuccess(this.notes);
}

class NotesFailure extends NotesCubitState {
  final String errorMessage;
  NotesFailure({required this.errorMessage});
}
