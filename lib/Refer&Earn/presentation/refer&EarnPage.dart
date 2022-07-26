import 'package:baaz/widgets/seprator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timelines/timelines.dart';

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
      body: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Container(
            width: 390.w,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFFFC87F), Color(0xFFFFE4C1)])),
            height: 319.h,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Refer and get FREE \nservices',
                            style: TextStyle(
                                color: Color(
                                  0xFF00144F,
                                ),
                                fontSize: 21,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Invite your friend to try Baaz \nCompany Services. They get \ninstant 300 off. You win 300 once \nthey take a service.',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color(
                                  0xFF00144F,
                                ),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Container(
                        height: 122.h,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/gift.png')),
                            color: Color(0xFFF69008),
                            shape: BoxShape.circle),
                        width: 122.w,
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Divider(
                      color: Colors.red,
                      thickness: 0.7,
                    ),
                    Text('REFER VIA'),
                    Divider(
                      color: Colors.black,
                      thickness: 0.7,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 56.w,
                          height: 56.h,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/whatsapp.png')),
                              color: Color(0xFFF69008)),
                        ),
                        Text('WhatsApp'),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 56.w,
                          height: 56.h,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/messenger.png')),
                              color: Color(0xFFF69008)),
                        ),
                        Text('Messenger'),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 56.w,
                          height: 56.h,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/copylink.png')),
                              color: Color(0xFFF69008)),
                        ),
                        Text('Copy Link'),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            height: 227.h,
            width: 320.w,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFFFC87F), Color(0xFFFFE4C1)]),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: EdgeInsets.all(18.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'How it works?',
                    style: TextStyle(
                        color: Color(
                          0xFF00144F,
                        ),
                        fontSize: 21,
                        fontWeight: FontWeight.bold),
                  ),
                  MySeparator(),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 50.h,
                            width: 50.w,
                            child: TimelineNode.simple(
                              color: Color(0xFFF49517),
                              indicatorChild: Center(child: Text('1')),
                              indicatorSize: 30,
                            ),
                          ),
                          Container(
                            height: 50.h,
                            width: 50.w,
                            child: TimelineNode.simple(
                                indicatorSize: 30,
                                color: Color(0xFFF49517),
                                indicatorChild: Center(child: Text('2'))),
                          ),
                          Container(
                            height: 50.w,
                            width: 50.w,
                            child: TimelineNode.simple(
                                indicatorSize: 30,
                                color: Color(0xFFF49517),
                                indicatorChild: Center(child: Text('3'))),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Invite your friends & get rewarded'),
                          Text('Invite your friends & get rewarded')
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
