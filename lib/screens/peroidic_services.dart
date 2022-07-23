import 'package:baaz/constants/ImageConstants.dart';
import 'package:baaz/screens/select_car_page.dart';
import 'package:flutter/material.dart';

import '../widgets/seprator.dart';

class PeroidicServices extends StatelessWidget {
  const PeroidicServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(
            'Right Running Board Pain',
            style: TextStyle(color: Color(0xFF00144F)),
          ),
        ),
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Icon(
              Icons.search,
              size: 40,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text('Right Running Board Paint'),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text('₹ 299'),
                      SizedBox(
                        width: 10,
                      ),
                      Text('₹ 749')
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 20,
                      ),
                      Text(
                        '4.8 (1,251K)',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [Text('18 hours')],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.local_offer_rounded,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text('Save 10% on every request')
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: 90,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/service.png'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        MySeparator(),
        Column(
          children: [
            details(
              head: 'Every 5000 kms',
              subhead: '6 months',
            ),
            details(
              head: 'Engine Oil',
              subhead: 'replacement',
            ),
            details(
              head: 'Take 3 hours',
              subhead: '',
            ),
            details(
              head: '2 months warranty',
              subhead: '',
            ),
            details(
              head: 'Wiper Fluid',
              subhead: 'Replacement',
            ),
            details(
              head: 'Battery Water Top Up',
              subhead: '',
            ),
            details(
              head: 'Car Wash',
              subhead: '',
            ),
            details(
              head: 'Interior Vacuuming ',
              subhead: '(Carpet and Seats)',
            ),
            details(
              head: ' Heater/Spark Plugs ',
              subhead: 'Checking',
            ),
          ],
        ),
        Center(
          child: CustomButtonWithIcon(),
        )
      ]),
    );
  }
}

class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 8.0,
      width: 8.0,
      decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
// }
// Every 5000 kms/6 months
//
// Engine Oil Replacement
//
// Take 3 hours
//
// 2 months warranty
//
// Wiper Fluid Replacement
//
// Battery Water Top Up
//
// Car Wash
//
// Interior Vacuuming (Carpet and Seats)
//
// Heater/Spark Plugs Checking
//
// Oil Filter Replacement
//
// Air Filter Cleaning

// Coolant Top-up
}

class details extends StatelessWidget {
  details({required this.head, required this.subhead});
  final String head;
  final String subhead;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8),
      child: Column(
        children: [
          Row(
            children: [
              MyBullet(),
              SizedBox(
                width: 4,
              ),
              Text(head)
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [Text(subhead)],
            ),
          )
        ],
      ),
    );
  }
}
