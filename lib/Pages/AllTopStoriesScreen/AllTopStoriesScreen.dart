// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:newyorktimes/Helpers/Fonts/Fonts.dart';
import 'package:newyorktimes/Helpers/Routes/Routes.dart';
import 'package:newyorktimes/Pages/AllTopStoriesScreen/AllTopStoriesScreenVM.dart';
import 'package:intl/intl.dart';

class AllTopStoriesScreen extends StatefulWidget {
  const AllTopStoriesScreen({super.key});

  @override
  State<AllTopStoriesScreen> createState() => _AllTopStoriesScreenState();
}

class _AllTopStoriesScreenState extends State<AllTopStoriesScreen> {
  AllTopStoriesScreenVM _allTopStoriesScreenVM = AllTopStoriesScreenVM();
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Scaffold(
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
                      SizedBox(
                        width: 95.w,
                      ),
                      Text(
                        "Top Stories",
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
                          hintText: "Search for Top Stories..."),
                    ),
                  ),
                ),
              ],
            )),
        backgroundColor: Colors.white,
        body: _allTopStoriesScreenVM.isDataAvailable == true
            ? RefreshIndicator(
                onRefresh: _allTopStoriesScreenVM.pullToRefresh,
                backgroundColor: Colors.black,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top:
                            // (MediaQuery.of(context).viewPadding.top) +
                            10.h),
                    child: Column(
                      children: [
                        // SizedBox(height: 24),

                        SizedBox(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 15.w, right: 15.w, bottom: 40.h),
                            child: ListView.separated(
                              separatorBuilder: (context, index) {
                                return Padding(
                                    padding: EdgeInsets.only(bottom: 10.w));
                              },
                              scrollDirection: Axis.vertical,
                              padding: EdgeInsets.zero,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 30,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    context.push(
                                      Pages.storiesDetailsScreen,
                                      extra: {
                                        "archiveDetails": _allTopStoriesScreenVM
                                            .topStoriesDetails.results!,
                                        "index": index,
                                      },
                                    );
                                  },
                                  child: Container(
                                    width: 345.w,
                                    height: 128.h,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              _allTopStoriesScreenVM
                                                  .topStoriesDetails
                                                  .results![index]
                                                  .multimedia![1]
                                                  .url!),
                                          fit: BoxFit.cover,
                                          colorFilter: ColorFilter.mode(
                                            Colors.black.withOpacity(
                                                0.3), // Adjust the color and opacity as needed
                                            BlendMode
                                                .darken, // Choose a blend mode like darken or multiply
                                          ),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Color(0xff626262)
                                                  .withOpacity(0.35),
                                              Color(0xff000000).withOpacity(1),
                                            ])),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 12.w, right: 12.w, top: 8.h),
                                      child: Column(
                                        children: [
                                          Text(
                                            _allTopStoriesScreenVM
                                                .topStoriesDetails
                                                .results![index]
                                                .title!,
                                            // "5 things to know about the 'conundrum' of lupus",
                                            style: TextStyle(
                                              fontFamily: FontFamily.nunito,
                                              color: Colors.white,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 50.h,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 130.w,
                                                child: Text(
                                                  _allTopStoriesScreenVM
                                                      .topStoriesDetails
                                                      .results![index]
                                                      .byline!,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,

                                                  // "Matt Villano",
                                                  style: TextStyle(
                                                    fontFamily:
                                                        FontFamily.nunito,
                                                    color: Colors.white,
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              Text(
                                                DateFormat('EEEE, d MMMM yyyy')
                                                    .format(DateTime.parse(
                                                        _allTopStoriesScreenVM
                                                            .topStoriesDetails
                                                            .results![index]
                                                            .publishedDate!)),
                                                style: TextStyle(
                                                  fontFamily: FontFamily.nunito,
                                                  color: Colors.white,
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w800,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : Center(
                child: CircularProgressIndicator(
                color: Colors.black,
              )),
      );
    });
  }
}
