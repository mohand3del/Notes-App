import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/cubit/note_cubit/notes_cubit.dart';
import 'package:notes_app/model/notes_model.dart';
import 'package:notes_app/view/widget/custom_appBar.dart';
import 'package:notes_app/view/widget/custom_text_filed.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});
  final NotesModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
   String? title,content;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.note.title = title?? widget.note.title;
              widget.note.subTile = content?? widget.note.subTile;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).getAllNotes();
              Navigator.pop(context);
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(hintTex: widget.note.title,onChange: (value){
              title = value;
            },),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(
              onChange: (value){
                content = value;
              },
              hintTex: widget.note.subTile,
              maxLines: 5,
            ),
          ),
        ],
      ),
    );
  }
}
