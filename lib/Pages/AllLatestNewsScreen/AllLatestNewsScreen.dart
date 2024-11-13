// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:newyorktimes/Helpers/Fonts/Fonts.dart';
import 'package:newyorktimes/Helpers/Routes/Routes.dart';
import 'package:newyorktimes/Pages/AllLatestNewsScreen/AllLatestNewsScreenVM.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class AllLatestNewsScreen extends StatefulWidget {
  const AllLatestNewsScreen({super.key});

  @override
  State<AllLatestNewsScreen> createState() => _AllLatestNewsScreenState();
}

class _AllLatestNewsScreenState extends State<AllLatestNewsScreen> {
  AllLatestNewsScreenVM _allLatestNewsScreenVM = AllLatestNewsScreenVM();

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
                        "Latest News",
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
                          hintText: "Search for Latest News..."),
                    ),
                  ),
                ),
              ],
            )),
        backgroundColor: Colors.white,
        body: _allLatestNewsScreenVM.isDataAvailable == true
            ? RefreshIndicator(
                onRefresh: _allLatestNewsScreenVM.pullToRefresh,
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
                        SizedBox(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 15.w,
                              right: 15.w,
                              bottom: 30.h,
                            ),
                            child: ListView.separated(
                              separatorBuilder: (context, index) {
                                return Padding(
                                    padding: EdgeInsets.only(bottom: 10.w));
                              },
                              itemCount: _allLatestNewsScreenVM
                                  .archiveDetails.articles!.length,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              padding: EdgeInsets.zero,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    context.push(
                                      Pages.newsDetailsScreen,
                                      extra: {
                                        "archiveDetails": _allLatestNewsScreenVM
                                            .archiveDetails.articles,
                                        "index": index,
                                      },
                                    );
                                  },
                                  child: Container(
                                    width: 345.w,
                                    height: 180.h,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              _allLatestNewsScreenVM
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
                                              Color(0xff000000).withOpacity(1),
                                            ])),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 16.w, top: 10.h, right: 16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            ("by ${_allLatestNewsScreenVM.archiveDetails.articles![index].author!}"),
                                            // "by Ryan Browne",
                                            style: TextStyle(
                                              fontFamily: FontFamily.nunito,
                                              color: Colors.white,
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                          SizedBox(height: 5.h),
                                          Text(
                                            _allLatestNewsScreenVM
                                                .archiveDetails
                                                .articles![index]
                                                .title!,
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
                                            _allLatestNewsScreenVM
                                                .archiveDetails
                                                .articles![index]
                                                .description!,
                                            maxLines: 4,
                                            overflow: TextOverflow.ellipsis,
                                            // "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”",
                                            style: TextStyle(
                                              fontFamily: FontFamily.nunito,
                                              color: Colors.white,
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
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
