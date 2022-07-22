import 'package:baaz/constants/ImageConstants.dart';
import 'package:flutter/material.dart';

class NotificationRow extends StatelessWidget {
  const NotificationRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(ImageConstants.avatar),
              ),
            ],
          ),
          SizedBox(
            width: 6,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Upcomming Booking'),
                  SizedBox(
                    width: 75,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Track Live',
                      style: TextStyle(color: Color(0xFF00144F)),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(), primary: Color(0xFFF8A435)),
                  )
                ],
              ),
              SizedBox(
                width: 280,
                child: Text('Name : Karam Heravdakar'),
              ),
              SizedBox(
                height: 20,
              ),
              Text('24 Jan 2021 at 5:30 PM'),
            ],
          ),
        ],
      ),
    );
  }
}
