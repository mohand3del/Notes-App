

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/model/notes_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NotesModel>? notes;
  getAllNotes()async{
    //emit(NotesLoading());
    //var notesBox = Hive.box('notes box');

    try{
      var notesBox = Hive.box<NotesModel>('notes box');



      notes =  notesBox.values.toList();
      emit(NotesSuccess());
    } catch (e){

      emit( NotesField(e.toString()));
    }
  }
}
