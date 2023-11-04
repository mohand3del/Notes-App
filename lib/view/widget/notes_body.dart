import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/view/widget/custom_appBar.dart';
import 'package:notes_app/view/widget/notes_item.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),

          Expanded(
            child: ListView(
              children: [
                NotesItem(),
                NotesItem(),
                NotesItem(),
                NotesItem(),
              ],
            ),
          ),
        ],
      ),
    );

  }
}
