import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddPayButton extends StatelessWidget {
  const AddPayButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.sp),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 15,
                        offset: Offset(0, 7), // changes position of shadow
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                    radius: 20,
                    backgroundColor: Colors.white,
                  ),
                  width: 40.w,
                  height: 40.h,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text('Add Card')
              ],
            )
          ],
        ),
        width: 325.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        height: 60.h,
      ),
    );
  }
}
