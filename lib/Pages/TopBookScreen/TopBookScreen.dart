// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:newyorktimes/Helpers/Fonts/Fonts.dart';
import 'package:newyorktimes/Helpers/Routes/Routes.dart';

class TopBookScreen extends StatefulWidget {
  const TopBookScreen({super.key});

  @override
  State<TopBookScreen> createState() => _TopBookScreenState();
}

class _TopBookScreenState extends State<TopBookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(86.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          context.pop();
                        },
                        child: Icon(Icons.arrow_back_ios)),
                    SizedBox(width: 95.w),
                    Text(
                      "Top Books",
                      style: TextStyle(
                        fontFamily: FontFamily.nunito,
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 300.w,
                height: 32.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(color: Color(0xff818181), width: 0.5.w),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15.w, bottom: 5.h),
                  child: TextFormField(
                    cursorColor: Color(0xff818181),
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(top: 5.h),
                          child: Icon(
                            Icons.search,
                            size: 22.w,
                            color: Color(0xff818181),
                          ),
                        ),
                        hintStyle: TextStyle(
                          fontFamily: FontFamily.nunito,
                          color: Color(0xff818181),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        hintText: "Search for Top Rated Books..."),
                  ),
                ),
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.h),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5.w,
                  mainAxisSpacing: 5.w),
              itemCount: 10,
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    context.push(Pages.newsDetailsScreen);
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip
                        .none, // Allows positioned elements to overflow the stack boundary
                    children: [
                      Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                          color: Color(0xff818181),
                          borderRadius: BorderRadius.circular(8.r),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xff626262).withOpacity(0.35),
                              Color(0xff000000).withOpacity(1),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -18.h, // Increased spacing here
                        child: Column(
                          children: [
                            Text(
                              "Half Girlfriend",
                              style: TextStyle(
                                fontFamily: FontFamily.nunito,
                                color: Colors.black,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(
                                height: 1.h), // Extra space between text lines
                            Text(
                              "Rank: #1",
                              style: TextStyle(
                                fontFamily: FontFamily.nunito,
                                color: Colors.black,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
