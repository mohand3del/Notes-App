import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:notes_app/cubit/add_note_cubit/add_notes_cubit.dart';


import '../../cubit/note_cubit/notes_cubit.dart';
import 'add_note_form_field.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesField) {
            print('error ${state.errorMessage}');
          }
          if (state is AddNotesSuccess) {
            BlocProvider.of<NotesCubit>(context).getAllNotes();
            Navigator.pop(context);

          }
        },
        builder: (context, state) {
          return AbsorbPointer(
              absorbing: state is AddNotesLoading ? true : false,
              child: Padding(
                padding:  EdgeInsets.only(
                  left: 12,
                  right: 12,
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: SingleChildScrollView(child: AddNoteForm()),
              ));
        },
      ),
    );
  }
}
