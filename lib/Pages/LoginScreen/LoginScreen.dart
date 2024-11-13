// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newyorktimes/Helpers/Fonts/Fonts.dart';
import 'package:newyorktimes/Pages/LoginScreen/LoginScreenVM.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginScreenVM _loginScreenVM = LoginScreenVM();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 375.w,
        height: 812.h,
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage("lib/Helpers/Images/loginImage.jpeg"),
                fit: BoxFit.cover)),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 375.w,
            height: 500.h,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36.r),
                    topRight: Radius.circular(36.r))),
            child: Padding(
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  Text(
                    "New York Times",
                    style: TextStyle(
                      fontFamily: FontFamily.newYorkTimes,
                      color: Colors.white,
                      fontSize: 45.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Get The Latest News And Updates",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: FontFamily.nunito,
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "From Politics to Entertainment: Your One-Stop Source for Comprehensive Coverage of the Latest News and Developments Across the Glob will be right on your hand.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: FontFamily.nunito,
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 45.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      // signInWithGoogle();
                      _loginScreenVM.loginUser(context);
                    },
                    child: Container(
                      width: 300.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.r)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "lib/Helpers/Images/google.png",
                            width: 18.w,
                            height: 18.h,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Continue with Google",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: FontFamily.nunito,
                              color: Colors.black,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
