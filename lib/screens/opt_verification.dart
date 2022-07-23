import 'package:flutter/material.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset('assets/images/cutpart2.png',
                    fit: BoxFit.contain),
              ),
            ],
          ),
          Positioned(
            top: 4,
            right: 1,
            child: Image.asset('assets/images/cutpart1.png'),
          ),
          Positioned(
            top: 150,
            left: 50,
            child: Image.asset('assets/images/Group.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.arrow_back),
                Image.asset(
                  'assets/images/baazlogo .png',
                  scale: 3,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
