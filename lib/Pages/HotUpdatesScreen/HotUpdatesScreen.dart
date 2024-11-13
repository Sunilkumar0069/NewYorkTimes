// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:newyorktimes/Helpers/Fonts/Fonts.dart';
import 'package:newyorktimes/Pages/HotUpdatesScreen/HotUpdatesScreenVM.dart';
import 'package:intl/intl.dart';

class HotUpdatesScreen extends StatefulWidget {
  const HotUpdatesScreen({super.key});

  @override
  State<HotUpdatesScreen> createState() => _HotUpdatesScreenState();
}

class _HotUpdatesScreenState extends State<HotUpdatesScreen> {
  HotUpdatesScreenVM _hotUpdatesScreenVM = HotUpdatesScreenVM();
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
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
            "Hot Updates",
            style: TextStyle(
              fontFamily: FontFamily.nunito,
              color: Colors.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 20.h),
          child: _hotUpdatesScreenVM.isDataAvailable == true
              ? RefreshIndicator(
                onRefresh: _hotUpdatesScreenVM.pullToRefresh,
                backgroundColor: Colors.black,
                color: Colors.white,
                child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 16.h,
                        ),
                        ListView.separated(
                          separatorBuilder: (context, index) {
                            return Column(
                              children: [
                                Divider(
                                  color: Color(0xff818181).withOpacity(0.4),
                                ),
                                Padding(padding: EdgeInsets.only(bottom: 10.h)),
                              ],
                            );
                          },
                          itemCount: 15,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 345.w,
                                  height: 128.h,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(_hotUpdatesScreenVM
                                          .hotUpdatesDetails
                                          .hotResults![index]
                                          .media![0]
                                          .mediaMetadata![2]
                                          .url!),
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(
                                            0.3), // Adjust the color and opacity as needed
                                        BlendMode
                                            .darken, // Choose a blend mode like darken or multiply
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                                Text(
                                  DateFormat('EEEE, d MMMM yyyy').format(
                                      DateTime.parse(_hotUpdatesScreenVM
                                          .hotUpdatesDetails
                                          .hotResults![index]
                                          .publishedDate!)),
                                  // "Monday, 10 May 2021",
                                  style: TextStyle(
                                    fontFamily: FontFamily.nunito,
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Text(
                                  _hotUpdatesScreenVM.hotUpdatesDetails
                                      .hotResults![index].title!,
                                  // "WHO classifies triple-mutant Covid variant from India as global health risk",
                                  style: TextStyle(
                                    fontFamily: FontFamily.nunito,
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Text(
                                  _hotUpdatesScreenVM.hotUpdatesDetails
                                      .hotResults![index].abstract!,
                                  // "A World Health Organization official said Monday it is reclassifying the highly contagious triple-mutant Covid variant spreading in India as a “variant of concern,” indicating that it’s become a issue.",
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontFamily: FontFamily.nunito,
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Text(
                                  (_hotUpdatesScreenVM
                                              .hotUpdatesDetails
                                              .hotResults![index]
                                              .byline!
                                              .isNotEmpty &&
                                          _hotUpdatesScreenVM.hotUpdatesDetails
                                                  .hotResults![index].byline! !=
                                              "")
                                      ? (_hotUpdatesScreenVM.hotUpdatesDetails
                                          .hotResults![index].byline!)
                                      : "By New York Times",
                                  // "Published by Berkeley Lovelace Jr.",
                                  style: TextStyle(
                                    fontFamily: FontFamily.nunito,
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            );
                          },
                        )
                      ],
                    ),
                  ),
              )
              : Center(child: CircularProgressIndicator(color: Colors.black,)),
        ),
      );
    });
  }
}
