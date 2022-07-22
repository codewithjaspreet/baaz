import 'package:baaz/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/profile_row.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(top: 18.0, left: 12),
          child: Text(
            'My Profile',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              color: Color(0xFFF3EDED),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Text(
                            'Verified Customer',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Icon(Icons.check_box)],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(
                              '+91-xxxx xxxxxx',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 10,
              thickness: 1,
              color: Colors.black,
            ),
            SizedBox(
              height: 25,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ProfileRow(
                            icon: Icons.account_circle_outlined,
                            text: 'Payment Options',
                          ),
                          ProfileRow(
                            icon: Icons.account_circle_outlined,
                            text: 'My Booking',
                          ),
                          ProfileRow(
                            icon: Icons.account_circle_outlined,
                            text: 'Manage Address',
                          ),
                          ProfileRow(
                            icon: Icons.account_circle_outlined,
                            text: 'Refer & Earn',
                          ),
                          ProfileRow(
                            icon: Icons.account_circle_outlined,
                            text: 'Discount & offers',
                          )
                        ],
                      ),
                    ),
                    height: 400,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFDDDDDD),
                        ),
                        borderRadius: BorderRadius.circular(
                            20) // use instead of BorderRadius.all(Radius.circular(20))
                        ),
                  ),
                );
              },
              itemCount: 2,
            ),
            Text(
              'Logout',
              style: TextStyle(color: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
