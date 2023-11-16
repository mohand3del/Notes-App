
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon, this.onPressed});
   final IconData icon;
   final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.w,
      height: 45.h,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16)
      ),
      child: Center(
        child:IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 28,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
