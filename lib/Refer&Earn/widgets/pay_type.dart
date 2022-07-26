import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PayType extends StatelessWidget {
  const PayType({
    Key? key,
    required this.type,
    required this.icon,
  }) : super(key: key);

  final String type;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.sp),
      child: Container(
        width: 325.w,
        height: 60.h,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 7), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(20.sp),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    child: CircleAvatar(
                      child: Image.asset(icon),
                      radius: 20,
                      backgroundColor: Color(0XFFEEEEEE),
                    ),
                    width: 40.w,
                    height: 40.h,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(type),
                ],
              ),
              Container(
                width: 13.w,
                height: 13.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
