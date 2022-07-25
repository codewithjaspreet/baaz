import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class search_container extends StatelessWidget {
  const search_container({
    Key? key,
    required this.heading,
  }) : super(
          key: key,
        );

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              heading,
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
    );
  }
}
