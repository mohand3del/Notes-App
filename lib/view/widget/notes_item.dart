import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/view/screens/edit_note_screen.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return EditNoteScreen();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 10),
        child: Container(
          width: 140.w,
          height: 180.h,
          decoration: ShapeDecoration(
            color: Color(0x999CDBFF),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
          ),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Health',
                  style: TextStyle(
                    color: Color(0xFF1E1E1E),
                    fontSize: 18.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(

                  'Mohand Flutter dev and student computer sceince',
                  maxLines: 3,
                  style: TextStyle(

                    overflow: TextOverflow.ellipsis,

                    color: Color(0xFF1E1E1E),
                    fontSize: 10.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 2,

                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



