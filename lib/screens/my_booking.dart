import 'package:auto_size_text/auto_size_text.dart';
import 'package:baaz/constants/ImageConstants.dart';
import 'package:baaz/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/booking_row.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'My Booking',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: const CustomNavigationBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                bookingCard(),
                SizedBox(
                  height: 40,
                ),
                Divider(
                  color: Colors.black,
                  height: 10,
                ),
                bookingCard(),
                SizedBox(
                  height: 40,
                ),
                Divider(
                  color: Colors.black,
                  height: 10,
                ),
                bookingCard(),
                SizedBox(
                  height: 40,
                ),
                Divider(
                  color: Colors.black,
                  height: 10,
                ),
                bookingCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
