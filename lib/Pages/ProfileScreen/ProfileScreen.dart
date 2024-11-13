// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:newyorktimes/Helpers/Fonts/Fonts.dart';
import 'package:newyorktimes/Pages/ProfileScreen/ProfileScreenVM.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ProfileScreenVM _profileScreenVM = ProfileScreenVM();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Icon(Icons.arrow_back_ios)),
        title: Text(
          "New York Times",
          style: TextStyle(
            fontFamily: FontFamily.newYorkTimes,
            color: Colors.black,
            fontSize: 30.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Image.asset(
              "lib/Helpers/Images/logo2.jpg",
              width: 100.w,
              height: 100.h,
            ),
            SizedBox(height: 25.h),
            Container(
              width: 345.w,
              height: 300.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: Colors.black.withOpacity(0.3),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 24.h),
                child: Column(
                  children: [
                    Text(
                      "Thank you for choosing The New York Times app as your trusted source for news. We’re honored to bring you the stories that matter most—from breaking news to in-depth analysis—delivered straight to your fingertips.\n\nYour engagement and trust inspire us every day. We are committed to enhancing your reading experience and delivering high-quality journalism that keeps you informed and empowered.\n\nThank you for being part of The Times community!",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: FontFamily.nunito,
                        color: Colors.black,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: () {
                _profileScreenVM.signOut(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Logout",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: FontFamily.nunito,
                      color: Colors.red,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(
                    Icons.logout,
                    color: Colors.red,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
