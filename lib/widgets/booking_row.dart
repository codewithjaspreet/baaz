import 'package:flutter/material.dart';

import '../constants/ImageConstants.dart';

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
              backgroundColor: Color(0xFFF8A435),
              child: Image.asset(
                ImageConstants.Bookingbaaz,
                fit: BoxFit.cover,
              ),
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
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
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
