import 'package:baaz/constants/ImageConstants.dart';
import 'package:baaz/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/notification_row.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'Notification',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NotificationRow(),
            Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.black,
              height: 10,
            ),
            NotificationRow(),
            Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.black,
              height: 10,
            ),
            NotificationRow(),
            Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.black,
              height: 10,
            ),
            NotificationRow(),
            Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.black,
              height: 10,
            ),
            NotificationRow(),
            Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.black,
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
