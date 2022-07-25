import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Discount extends StatelessWidget {
  const Discount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          'Discounts & offers',
          style: TextStyle(color: Color(0xFF00144F)),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.sp),
                        ),
                        width: 300.w,
                        height: 120.h,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 150.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20)),
                                  color: Color(0xFFC4C4C4)),
                              height: 120.h,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '50% Off ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'On Car Wash ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 17.sp),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 2.8.sp),
                                      child: Text(
                                        'With code: WASHFORIT',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 11.sp,
                                            color: Color(0xFF666666)),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Get Now'),
                                      style: ElevatedButton.styleFrom(
                                          shape: StadiumBorder(),
                                          primary: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 150.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/discount.png'),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                              ),
                              height: 120.h,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
