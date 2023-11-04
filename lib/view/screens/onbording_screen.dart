import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/view/screens/home_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width:double.infinity,
        height:double.infinity,
        //clipBehavior: Clip.antiAlias,
        //decoration: BoxDecoration(color: Color(0xFFFF8383)),

        child: Column(
          children: [
            Stack(
              children: [
                Container(
                 // width: 200,

                  child: Image.asset(
                    'assets/images/Wall Polygon.png',
                    fit: BoxFit.fill,
                    width: double.infinity,
                    height: 400,
                  ),
                ),
                Positioned(
                  left: 89,
                  top: 140,
                  child: Image.asset(

                    'assets/images/Illustration.png',
                    height: 270,
                    fit: BoxFit.fill,
                  ),
                ),

              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            SizedBox(
              width: 340.w,
              height: 71.h,
              child: Text(
                'Create free notes & collaborate with your team',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            SizedBox(
              width: 340.w,
              height: 71.h,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean est elit, lobortis a mattis vel, aliquet ut ligula.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6000000238418579),
                  fontSize: 13.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF8383),
              ),
              child: const Text(
                'Get Started',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
