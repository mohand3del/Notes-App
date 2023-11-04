

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/model/notes_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());



  addNote(NotesModel notesModel) async{

    emit(AddNotesLoading());
    //var notesBox = Hive.box('notes box');

   try{
     var notesBox = Hive.box<NotesModel>('notes box');


     await notesBox.add(notesModel);
     emit(AddNotesSuccess());
   } catch (e){

   emit( AddNotesField(e.toString()));
   }
  }
}
