part of 'edit_notes_cubit.dart';

@immutable
abstract class EditNotesState {}

class EditNotesInitial extends EditNotesState {}
class EditNotesLoading extends EditNotesState{}
class EditNotesSuccess extends EditNotesState{}
class EditNotesField extends EditNotesState{
  final String errorMessage;

  EditNotesField(this.errorMessage);
}
