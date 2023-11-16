import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:notes_app/cubit/note_cubit/notes_cubit.dart';
import 'package:notes_app/model/notes_model.dart';
import 'package:notes_app/view/widget/custom_appBar.dart';
import 'package:notes_app/view/widget/notes_item.dart';




class NotesBody extends StatefulWidget {
  const NotesBody({super.key});

  @override
  State<NotesBody> createState() => _NotesBodyState();
}

class _NotesBodyState extends State<NotesBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).getAllNotes();
    super.initState();
  }
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
            child: BlocBuilder<NotesCubit,NotesState>(

              builder: (BuildContext context, NotesState state) {
                List<NotesModel>notes = BlocProvider.of<NotesCubit>(context).notes!;
                return  SingleChildScrollView(
                  child: StaggeredGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                    children: List.generate(notes.length, (index){
                      return StaggeredGridTile.fit(crossAxisCellCount: 1, child: GestureDetector(
                        onTap: (){

                        },
                        child:NotesItem(note: notes[index],index:index,),
                      ));
                      
                    }),

                  ),
                );
              },

            ),
          ),
        ],
      ),
    );

  }
}
/*

ListView.builder(
                  itemCount: notes.length,
                  itemBuilder: (BuildContext context, int index) {
                    return NotesItem(
                      note: notes[index],
                    );
                  },

                );
 */