import 'package:auto_size_text/auto_size_text.dart';
import 'package:baaz/constants/ImageConstants.dart';
import 'package:baaz/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

class bookingCard extends StatelessWidget {
  const bookingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            child: CircleAvatar(
              radius: 32,
            ),
            radius: 30,
            backgroundImage: AssetImage(ImageConstants.Bookingbaaz),
          ),
          SizedBox(
            width: 6,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Upcomming Booking'),
                  SizedBox(
                    width: 70,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Confirm',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(), primary: Color(0xFFF8A435)),
                  )
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                width: 280,
                child: Text(
                    'We will send the details of your booking 1 hour before your schedule time'),
              ),
              SizedBox(
                height: 10,
              ),
              Text('24 Jan 2021 at 5:30 PM'),
            ],
          ),
        ],
      ),
    );
  }
}
