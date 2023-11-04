import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/view/widget/custom_appBar.dart';
import 'package:notes_app/view/widget/custom_text_filed.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

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
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(hintTex: 'Title'),
          ),
          SizedBox(height: 15.h,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(hintTex: 'Content',maxLines: 5,),
          ),

        ],
      ),
    );
  }
}
