import 'package:baaz/screens/my_profile.dart';
import 'package:baaz/screens/landing_page.dart';
import 'package:baaz/screens/my_booking.dart';
import 'package:baaz/screens/notification.dart';
import 'package:baaz/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotificationPage(),
    );
  }
}
