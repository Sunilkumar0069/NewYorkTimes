// Padding(
                //   padding: EdgeInsets.only(
                //     left: 15.w,
                //     right: 15.w,
                //   ),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     children: [
                //       Text(
                //         "Top Books",
                //         textAlign: TextAlign.center,
                //         style: TextStyle(
                //           fontFamily: FontFamily.nunito,
                //           color: Colors.black,
                //           fontSize: 18.sp,
                //           fontWeight: FontWeight.w900,
                //         ),
                //       ),
                //       Spacer(),
                //       GestureDetector(
                //         onTap: () {
                //           context.push(Pages.topBookScreen);
                //         },
                //         child: Text(
                //           "See All",
                //           textAlign: TextAlign.center,
                //           style: TextStyle(
                //             fontFamily: FontFamily.nunito,
                //             color: Color(0xff0080FF),
                //             fontSize: 12.sp,
                //             fontWeight: FontWeight.w600,
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // GridView.builder(
                //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 2,
                //       crossAxisSpacing: 5.w,
                //       mainAxisSpacing: 5.w),
                //   itemCount: 6,
                //   padding: EdgeInsets.zero,
                //   physics: NeverScrollableScrollPhysics(),
                //   shrinkWrap: true,
                //   itemBuilder: (context, index) {
                //     return Stack(
                //       alignment: Alignment.center,
                //       clipBehavior: Clip
                //           .none, // Allows positioned elements to overflow the stack boundary
                //       children: [
                //         Container(
                //           width: 160,
                //           height: 160,
                //           decoration: BoxDecoration(
                //             color: Color(0xff818181),
                //             borderRadius: BorderRadius.circular(8.r),
                //             gradient: LinearGradient(
                //               begin: Alignment.topCenter,
                //               end: Alignment.bottomCenter,
                //               colors: [
                //                 Color(0xff626262).withOpacity(0.35),
                //                 Color(0xff000000).withOpacity(1),
                //               ],
                //             ),
                //           ),
                //         ),
                //         Positioned(
                //           bottom: -18.h, // Increased spacing here
                //           child: Column(
                //             children: [
                //               Text(
                //                 "Rank: #1",
                //                 style: TextStyle(
                //                   fontFamily: FontFamily.nunito,
                //                   color: Colors.black,
                //                   fontSize: 10.sp,
                //                   fontWeight: FontWeight.w700,
                //                 ),
                //               ),
                //               SizedBox(
                //                   height:
                //                       1.h), // Extra space between text lines
                //               Text(
                //                 "Half Girlfriend",
                //                 style: TextStyle(
                //                   fontFamily: FontFamily.nunito,
                //                   color: Colors.black,
                //                   fontSize: 10.sp,
                //                   fontWeight: FontWeight.w900,
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ],
                //     );
                //   },
                // ),