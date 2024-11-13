import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:newyorktimes/BO/TopStoriesBO/TopStoriesBO.dart';
import 'package:newyorktimes/Helpers/Fonts/Fonts.dart';
import 'package:newyorktimes/Helpers/Routes/Routes.dart';
import 'package:intl/intl.dart';

class StoriesDetailsScreen extends StatefulWidget {
  final List<Results> archiveDetails;

  final int index;
  const StoriesDetailsScreen({
    super.key,
    required this.archiveDetails,

    required this.index,
  });

  @override
  State<StoriesDetailsScreen> createState() => _StoriesDetailsScreenState();
}

class _StoriesDetailsScreenState extends State<StoriesDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: Container(
        width: 40.w,
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: Colors.black,
        ),
        child: GestureDetector(
          onTap: () {
            context.pushReplacement(Pages.homeScreen);
          },
          child: Icon(
            Icons.home_outlined,
            color: Colors.white,
            size: 25.sp,
          ),
        ),
      ),
      body: Stack(children: [
        SizedBox(
          width: 375.w,
          height: 400.h,
          child: Image.network(
            widget.archiveDetails[widget.index].multimedia![2].url!,
            // widget.imageDetails[widget.index].url!,
            // "https://storage.googleapis.com/du-prd/books/images/9780593725801.jpg",
            width: 375.w,
            height: 400.h,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: (MediaQuery.of(context).viewPadding.top) + 5.h,
          left: 20.w,
          child: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Container(
              width: 32.w,
              height: 32.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                // color: Color(0xffF5F5F5).withOpacity(0.5),
                color: Colors.black.withOpacity(1),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 6.w),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 375.w,
            height: 470.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36.r),
                    topRight: Radius.circular(36.r))),
            child: Padding(
              padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 88.h),
              child: Text(
                maxLines: 15,
                overflow: TextOverflow.ellipsis,
                widget.archiveDetails[widget.index].abstract!,
                // newsData,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: FontFamily.nunito,
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 270.h,
          left: 32.w,
          child: Container(
            width: 311.w,
            height: 141.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: Colors.black.withOpacity(0.7),
              // color: Color(0xffF5F5F5).withOpacity(0.6),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 12.w, right: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    // "Monday, 10 May 2021",

                    DateFormat('EEEE, d MMMM yyyy').format(DateTime.parse(
                        widget.archiveDetails[widget.index].publishedDate!)),
                    style: TextStyle(
                      fontFamily: FontFamily.nunito,
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    widget.archiveDetails[widget.index].title!,
                    // "Crypto investors should be prepared to lose all their money, BOE governor says",
                    style: TextStyle(
                      fontFamily: FontFamily.nunito,
                      color: Colors.white,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    widget.archiveDetails[widget.index].byline!,
                    // "Published by Berkeley Lovelace Jr.",
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
          ),
        ),
      ]),
    );
  }
}
