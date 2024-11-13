// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:newyorktimes/Helpers/Fonts/Fonts.dart';
import 'package:newyorktimes/Helpers/Routes/Routes.dart';
import 'package:newyorktimes/Pages/HomeScreen/HomeScreenVM.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenVM _homeScreenVM = HomeScreenVM();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(
              top: (MediaQuery.of(context).viewPadding.top) + 24.h),
          child: _homeScreenVM.isNotDataAvailable == true
              ? RefreshIndicator(
                backgroundColor: Colors.black,
                  onRefresh: _homeScreenVM.pullToRefresh,
                  color: Colors.white,
                  child: SingleChildScrollView(
                      physics:  AlwaysScrollableScrollPhysics(),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 15.w,
                              right: 15.w,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "New York Times",
                                  style: TextStyle(
                                    fontFamily: FontFamily.newYorkTimes,
                                    color: Colors.black,
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    context.push(Pages.hotUpdatesScreen);
                                  },
                                  child: Icon(
                                    Icons.notifications_on,
                                    color: Colors.black,
                                    size: 25.w,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                SizedBox(
                                  width: 50.w,
                                  height: 50.h,
                                  child: GestureDetector(
                                      onTap: () {
                                        context.push(Pages.profileScreen);
                                      },
                                      child: Image.asset(
                                          "lib/Helpers/Images/logo2.jpg")),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 23.h),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 15.w,
                              right: 15.w,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Latest News",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: FontFamily.nunito,
                                    color: Colors.black,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    context.push(Pages.allLatestNewsScreen);
                                  },
                                  child: Text(
                                    "See All",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: FontFamily.nunito,
                                      color: Color(0xff0080FF),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16.h),
                          SizedBox(
                            height: 240.h,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 15.w,
                              ),
                              child: GestureDetector(
                                onTap: () {},
                                child: ListView.separated(
                                  separatorBuilder: (context, index) {
                                    return Padding(
                                        padding: EdgeInsets.only(right: 10.w));
                                  },
                                  itemCount: 3,
                                  scrollDirection: Axis.horizontal,
                                  padding: EdgeInsets.zero,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      width: 345.w,
                                      height: 240.h,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(_homeScreenVM
                                                .archiveDetails
                                                .articles![index]
                                                .urlToImage!),
                                            fit: BoxFit.cover,
                                            colorFilter: ColorFilter.mode(
                                              Colors.black.withOpacity(
                                                  0.3), // Adjust the color and opacity as needed
                                              BlendMode
                                                  .darken, // Choose a blend mode like darken or multiply
                                            ),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.r),
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                Color(0xff626262)
                                                    .withOpacity(0.35),
                                                Color(0xff000000)
                                                    .withOpacity(1),
                                              ])),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.w, top: 30.h, right: 16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              ("by ${_homeScreenVM.archiveDetails.articles![index].author!}"), // "by Ryan Browne",
                                              style: TextStyle(
                                                fontFamily: FontFamily.nunito,
                                                color: Colors.white,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w900,
                                              ),
                                            ),
                                            SizedBox(height: 5.h),
                                            Text(
                                              _homeScreenVM.archiveDetails
                                                  .articles![index].title!,

                                              // "Crypto investors should be prepared to lose all their money, BOE governor says",
                                              style: TextStyle(
                                                fontFamily: FontFamily.nunito,
                                                color: Colors.white,
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w900,
                                              ),
                                            ),
                                            SizedBox(height: 10.h),
                                            Text(
                                              _homeScreenVM
                                                  .archiveDetails
                                                  .articles![index]
                                                  .description!,
                                              // "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”",
                                              style: TextStyle(
                                                fontFamily: FontFamily.nunito,
                                                color: Colors.white,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 15.w,
                              right: 15.w,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Top Stories",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: FontFamily.nunito,
                                    color: Colors.black,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    context.push(Pages.allTopStoriesScreen);
                                  },
                                  child: Text(
                                    "See All",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: FontFamily.nunito,
                                      color: Color(0xff0080FF),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15.w, right: 15.w),
                            child: ListView.separated(
                              separatorBuilder: (context, index) {
                                return Padding(
                                    padding: EdgeInsets.only(bottom: 10.w));
                              },
                              scrollDirection: Axis.vertical,
                              padding: EdgeInsets.zero,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 345.w,
                                  height: 128.h,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(_homeScreenVM
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
                                      borderRadius: BorderRadius.circular(8.r),
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xff626262).withOpacity(0.35),
                                            Color(0xff000000).withOpacity(1),
                                          ])),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 12.w, right: 12.w, top: 8.h),
                                    child: Column(
                                      children: [
                                        Text(
                                          _homeScreenVM.topStoriesDetails
                                              .results![index].title!,
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
                                                _homeScreenVM.topStoriesDetails
                                                    .results![index].byline!,
                                                // "Matt Villano",
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontFamily: FontFamily.nunito,
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
                                                      _homeScreenVM
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
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                        ],
                      )),
                )
              : Center(
                  child: CircularProgressIndicator(
                  color: Colors.black,
                )),
        ),
      );
    });
  }
}
