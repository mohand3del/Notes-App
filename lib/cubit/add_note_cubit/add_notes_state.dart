part of 'add_notes_cubit.dart';

@immutable
abstract class AddNotesState {}

class AddNotesInitial extends AddNotesState {}

class AddNotesLoading extends AddNotesState {}
class AddNotesSuccess extends AddNotesState {}
class AddNotesField extends AddNotesState {
  final String errorMessage;

  AddNotesField(this.errorMessage);
}
