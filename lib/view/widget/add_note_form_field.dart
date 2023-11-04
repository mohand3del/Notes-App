import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../cubit/add_note_cubit/add_notes_cubit.dart';
import '../../model/notes_model.dart';
import 'custom_bottom.dart';
import 'custom_text_filed.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey();
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomTextField(
              hintTex: 'Title',
              maxLines: 1,
              onSaved: (value) {
                title = value;
              },
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomTextField(
              hintTex: 'Content',
              maxLines: 5,
              onSaved: (value) {
                subTitle = value;
              },
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: BlocBuilder<AddNotesCubit,AddNotesState>(

                  builder:(context,state){
                    return CustomBottom(
                      isLoading: state is AddNotesLoading ? true : false,
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();

                          var noteModel = NotesModel(
                              title: title!,
                              subTile: subTitle!,
                              data: DateTime.now().toString(),
                              color: Colors.amberAccent.value);
                          BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
                        } else {
                          autovalidateMode = AutovalidateMode.always;
                          setState(() {});
                        }
                      },
                    );

                  })
          ),
        ],
      ),
    );
  }
}