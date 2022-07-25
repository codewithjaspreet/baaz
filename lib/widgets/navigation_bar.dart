import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      animationDuration: Duration(milliseconds: 300),
      color: Color(0xFFFFC87F),
      height: 55,
      buttonBackgroundColor: Color(0xFFF49517),
      backgroundColor: Colors.transparent,
      items: const <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.home,
            size: 35,
            color: Color(0xFF00144F),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.book,
            size: 30,
            color: Color(0xFF00144F),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.notifications,
            size: 30,
            color: Color(0xFF00144F),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.book_online,
            size: 30,
            color: Color(0xFF00144F),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.account_circle_outlined,
            size: 30,
            color: Color(0xFF00144F),
          ),
        ),
      ],
      onTap: (index) {
        //Handle button tap
      },
    );
  }
}
