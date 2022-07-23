import 'package:flutter/material.dart';

class ReferandEarn extends StatelessWidget {
  const ReferandEarn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          title: Text(
            'Refer & Earn',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Refer  and get FREE services',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  )
                ],
              )
            ],
          ),
          height: 319,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xFFFFC87F),
            Color(0xFFFFE4C1),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        ));
  }
}
