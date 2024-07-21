part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class NotesSuccess extends NotesState {
  List<NoteModel> notes;

  NotesSuccess({required this.notes});
}

final class NotesFalure extends NotesState {
  final String errMassage;

  NotesFalure({required this.errMassage});
}
