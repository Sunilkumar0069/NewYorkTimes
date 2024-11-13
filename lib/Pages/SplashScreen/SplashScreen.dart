// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newyorktimes/Helpers/Fonts/Fonts.dart';
import 'package:newyorktimes/Pages/SplashScreen/SplashScreenVM.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashScreenVM _splashScreenVM = SplashScreenVM();

  @override
  void initState() {
    super.initState();
    _splashScreenVM.navigateToLoginScreen(context);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "New York",
              style: TextStyle(
                fontFamily: FontFamily.newYorkTimes,
                color: Colors.black,
                fontSize: 64.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              "Times",
              style: TextStyle(
                fontFamily: FontFamily.newYorkTimes,
                color: Colors.black,
                fontSize: 64.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
