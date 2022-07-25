import 'package:baaz/widgets/searchContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 12.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              search_container(
                heading: 'Search Service',
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Popular Services',
                  style: TextStyle(
                      color: Color(0xFF00144F),
                      fontWeight: FontWeight.bold,
                      fontSize: 21.sp),
                ),
              ),
              SizedBox(height: 15.h),
              PopularCards()
            ],
          ),
        ),
      ),
    );
  }
}

class PopularCards extends StatelessWidget {
  const PopularCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 20),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 5.0, spreadRadius: 5),
        ], borderRadius: BorderRadius.circular(14), color: Colors.grey),
        height: 299.h,
        width: 302.h,
        child: Column(
          children: [
            Image.asset('assets/images/Group1.png'),
            Text('PERIODIC SERVICE'),
          ],
        ),
      ),
    );
  }
}
