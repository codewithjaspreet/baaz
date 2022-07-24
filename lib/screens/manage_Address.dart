import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ManageAddress extends StatelessWidget {
  const ManageAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Manage Address',
          style: TextStyle(color: Color(0xFF00144F), fontSize: 21),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hazratganj',
                  style: TextStyle(
                      color: Color(0xFF00144F),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Remove',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                )
              ],
            ),
            Text(
              '131 sector 4, D block, hazratganj Lucknow, Uttar Pradesh, 226001',
              style: TextStyle(fontSize: 21),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Icon(
                  Icons.add,
                  color: Color(0xFFF49517),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Add another address',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF49517),
                      fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              thickness: 0.6,
            )
          ],
        ),
      ),
    );
  }
}
