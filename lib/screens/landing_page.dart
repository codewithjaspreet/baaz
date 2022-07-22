import 'package:baaz/constants/ImageConstants.dart';
import 'package:flutter/material.dart';

class landingPage extends StatelessWidget {
  const landingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      body: Center(
        child: Image.asset(ImageConstants.splashImage),
      ),
    );
  }
}
