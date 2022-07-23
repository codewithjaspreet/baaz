import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectCarpage extends StatelessWidget {
  const SelectCarpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Image.asset('assets/images/car.png'),
          Column(
            children: [
              Text(
                'Say Goodbye To Your Car Troubles!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('100+ Services, Repairs & Products'),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          CustomButtonWithIcon()
        ],
      ),
    );
  }
}

class CustomButtonWithIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => () {},
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Container(
          //width: 100.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: Color(0xFFFDA003),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(
            child: Text(
              'SELECT YOUR CAR',
              style: TextStyle(fontSize: 18.0, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
