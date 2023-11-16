
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/view/widget/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(vertical: 8.h,horizontal: 16.h),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 32.sp,),
          ),
          const Spacer(),
           CustomSearchIcon(icon:icon,onPressed: onPressed,),

        ],
      ),
    );
  }
}
