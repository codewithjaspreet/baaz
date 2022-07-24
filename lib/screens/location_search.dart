import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '';

class LocationSearch extends StatelessWidget {
  const LocationSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 18.h),
          child: Column(
            children: [
              Container(
                height: 36.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search for society, landmark, locality...',
                        style: TextStyle(fontSize: 13.13.sp),
                      ),
                      Icon(
                        Icons.search,
                        color: Color(0xFF363636),
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFBDBDBD)),
                    borderRadius: BorderRadius.circular(12.sp),
                    color: Colors.transparent),
              ),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.gps_fixed_outlined,
                      color: Color(0xFF00144F),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Current Location',
                          style: TextStyle(
                              color: Color(0xFF00144F),
                              fontSize: 15.78.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.sp),
                          child: Text(
                            'Using GPS',
                            style: TextStyle(
                                fontSize: 8.56.sp, color: Colors.grey),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
