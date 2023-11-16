import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key,required this.hintTex, this.maxLines = 1, this.onSaved, this.onChange}) : super(key: key);

  final String hintTex;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'Field';
        }else{
          return null;
        }
      },
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintTex,
        border: borderCustom(),
        enabledBorder: borderCustom(),
        focusedBorder: borderCustom(Colors.lightBlue), // Add the focused border color if needed
      ),
    );
  }

  OutlineInputBorder borderCustom([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: color ?? Colors.black),
    );
  }

}
