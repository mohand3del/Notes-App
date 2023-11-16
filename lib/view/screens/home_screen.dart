import 'package:flutter/material.dart';
import 'package:notes_app/view/widget/custom_bottom_sheet.dart';
import 'package:notes_app/view/widget/notes_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: Color(0x999CDBFF) ,

        onPressed: (){
          showModalBottomSheet(context: context, builder: (context){

            return CustomBottomSheet();
          });
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
          //color: Colors.,
        ),

      ),
      body:NotesBody(),

    );
  }
}


