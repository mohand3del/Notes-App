part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}
class NotesLoading extends NotesState {}
class NotesSuccess extends NotesState {

}
class NotesField extends NotesState {
  final String errorMessage;

  NotesField(this.errorMessage);
}
