// Padding(
//                 padding: EdgeInsets.only(left: 15.w),
//                 child: SizedBox(
//                   height: 32.h,
//                   child: ListView.separated(
//                     separatorBuilder: (context, index) {
//                       return Padding(padding: EdgeInsets.only(right: 15.w));
//                     },
//                     itemCount: 5,
//                     padding: EdgeInsets.zero,
//                     scrollDirection: Axis.horizontal,
//                     itemBuilder: (context, index) {
//                       return GestureDetector(
//                         onTap: () {},
//                         child: Container(
//                           width: 75.w,
//                           height: 32.h,
//                           decoration: BoxDecoration(
//                               color: Colors.black.withOpacity(0.8),
//                               borderRadius: BorderRadius.circular(16.r)),
//                           child: Center(
//                             child: Text(
//                               "Healthy",
//                               style: TextStyle(
//                                 fontFamily: FontFamily.nunito,
//                                 color: Colors.white,
//                                 fontSize: 12.sp,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ),