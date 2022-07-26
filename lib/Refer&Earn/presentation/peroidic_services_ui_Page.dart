import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PeroidicServicesUi extends StatelessWidget {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Periodic Services',
          style: TextStyle(color: Color(0XFF00144F)),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color(0XFF00144F),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.sp),
            child: Icon(
              Icons.search,
              color: Color(0XFF00144F),
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 390.w,
              height: 211.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/peroidic_Car.png'))),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Periodic Services',
                    style: TextStyle(
                        color: Color(0XFF00144F),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0XFF00144F),
                      ),
                      Text('4.8 (1,251K)')
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.book_online,
                        color: Color(0XFF00144F),
                      ),
                      Text(
                        '166 bookings this year ',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0XFF00144F),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 100.h,
                    child: PageView(
                      controller: _controller,
                      children: [serviceRow(), serviceRow()],
                    ),
                  ),
                  SizedBox(
                    height: 5.w,
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.sp),
                    child: Text('Most Popular'),
                  ),
                  Container(
                    height: 300.h,
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 21.w,
                          mainAxisSpacing: 10.h,
                          childAspectRatio: .8),
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            width: 50.w,
                            height: 50.w,
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 16.0,
                                  child: ClipRRect(
                                    child: Image.asset(
                                      'assets/images/most_popular.png',
                                      scale: 0.1,
                                    ),
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                ),
                                Text('Rear Bumper')
                              ],
                            ));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(18.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Add-Ons'),
                        Row(
                          children: [
                            Text(
                              'More ',
                              style: TextStyle(color: Color(0XFF00144F)),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0XFF00144F),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  peroidicRow(),
                  SizedBox(
                    height: 20.h,
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 0.9,
                  ),
                  peroidicRow(),
                  SizedBox(
                    height: 20.h,
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 0.9,
                  ),
                  peroidicRow(),
                  SizedBox(
                    height: 20.h,
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 0.9,
                  ),
                  peroidicRow(),
                  SizedBox(
                    height: 20.h,
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 0.9,
                  ),
                  peroidicRow(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class peroidicRow extends StatelessWidget {
  const peroidicRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Right Running Board Paint'),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.star,
                  color: Color(0XFF00144F),
                ),
                Text('4.8 (1,251K)')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('₹ 299'),
                SizedBox(
                  width: 5.w,
                ),
                Text('18 hours')
              ],
            ),
          ],
        ),
        Container(
          width: 99.w,
          height: 87.h,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/servicecard .png'),
                fit: BoxFit.fill),
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'Add',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  width: 67.w,
                  height: 24.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white),
                ),
                bottom: 2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class serviceRow extends StatelessWidget {
  const serviceRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 12.w,
            ),
            Icon(
              Icons.local_offer_rounded,
              color: Color(0XFF00144F),
              size: 30,
            ),
            SizedBox(
              width: 10.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Save 10% on every request',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0XFF00144F),
                  ),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Text(
                  'Get Plus Now',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0XFF00144F),
                  ),
                )
              ],
            )
          ],
        ),
        height: 159.h,
        width: 325.w,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
