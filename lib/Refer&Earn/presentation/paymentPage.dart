import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        elevation: 0,
        title: Text(
          'Card Details',
          style:
              TextStyle(color: Color(0XFF00144F), fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
              height: 207.h,
              width: 325.w,
              top: 0,
              left: 20,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/paycard1.png'))),
              )),
          Positioned(
              height: 207.h,
              width: 325.w,
              top: 30.h,
              left: 20.w,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/card.png'))),
              )),
          Positioned(
              height: 207.h,
              width: 325.w,
              top: 250.h,
              left: 15.w,
              child: Text(
                'Card Details',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Positioned(
              left: 20.w,
              right: 20.w,
              top: 290.h,
              child: details(
                heading: 'Card number',
              )),
          Positioned(
              top: 360.h,
              left: 20.w,
              right: 20.w,
              child: details(
                heading: 'Exp date',
              )),
          Positioned(
              top: 430.h,
              left: 20.w,
              right: 20.w,
              child: details(
                heading: 'CVV',
              )),
          Positioned(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cancel',
                  style: TextStyle(color: Colors.grey),
                ),
                Container(
                  child: Center(
                    child: Text(
                      'Confirm',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Color(0xFFF49517),
                  ),
                  height: 50.h,
                  width: 160.w,
                ),
              ],
            ),
            top: 530.h,
            left: 20.w,
            right: 20.w,
          )
        ],
      ),
    );
  }
}

class details extends StatelessWidget {
  const details({
    Key? key,
    required this.heading,
  }) : super(
          key: key,
        );

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 325.w,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: heading,
              hintStyle: TextStyle(
                color: Colors.grey,
              )),
        ),
      ),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFBDBDBD)),
          borderRadius: BorderRadius.circular(13.sp),
          color: Colors.transparent),
    );
  }
}
