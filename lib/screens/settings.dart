import 'package:baaz/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);
  final bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'My Profile',
            style: TextStyle(color: Colors.black),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('assets/images/whatsapp.png'),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Updates on whatsaap'),
                ],
              ),
              FlutterSwitch(
                width: 125.0,
                height: 50.0,
                valueFontSize: 25.0,
                toggleSize: 45.0,
                // value: status,
                borderRadius: 30.0,
                padding: 8.0,
                showOnOff: true,
                onToggle: (val) {
                  // setState(() {

                  // });
                },
                value: status,
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            color: Colors.grey,
            height: 1,
            indent: 10,
            endIndent: 10,
          )
        ],
      ),
    );
  }
}
