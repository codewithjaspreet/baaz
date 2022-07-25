import 'package:baaz/widgets/navigation_bar.dart';
import 'package:baaz/widgets/searchContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatelessWidget {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Icon(
              Icons.location_pin,
              color: Colors.black,
            ),
            SizedBox(width: 5.w),
            Text(
              'Lucknow',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [Image.asset('assets/images/carimg.png')],
      ),
      bottomNavigationBar: CustomNavigationBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              color: Colors.black,
              thickness: 2,
            ),
            SizedBox(
              height: 4.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              child: search_container(
                heading: 'Search Service',
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 170.h,
              child: PageView(
                controller: _controller,
                children: const [
                  item(),
                  item(),
                  item(),
                  item(),
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: JumpingDotEffect(
                activeDotColor: Colors.deepPurple,
                dotColor: Colors.deepPurple.shade100,
                dotHeight: 10,
                dotWidth: 10,
                spacing: 12,
                //verticalOffset: 50,
                jumpScale: 3,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, i) {
                  return service(
                    text: 'periodic Services',
                    image: 'assets/images/pro1.png',
                  );
                },
                itemCount: 8,
              ),
              height: 170.h,
              width: 390.w,
              color: Colors.white70,
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Container(
                  width: 200.w,
                  height: 158.h,
                  color: Color(0xFFFBDBB0),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100.w,
                          height: 100.h,
                          child: Image.asset(
                            'assets/images/baazlogo .png',
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Professional',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                              Text(
                                'Car Cleaning',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                              // Text('With new stain blaster technology')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 160.w,
                  height: 158.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/pic.png'),
                          fit: BoxFit.fill)),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Categories(
              image1: 'assets/images/pic.png',
              image2: 'assets/images/service1.png',
              subHead1: 'AC Service & Repair',
              head: 'New Category Launches',
              subHead2: 'Car Health Check Up',
            ),
            SizedBox(
              height: 30.h,
            ),
            Categories(
              image1: 'assets/images/service3.png',
              image2: 'assets/images/service1.png',
              subHead1: 'Front Bumper',
              head: 'Denting and Painting Services',
              subHead2: 'Bonnet',
            ),
            SizedBox(
              height: 30.h,
            ),
            Categories(
              image1: 'assets/images/service3.png',
              image2: 'assets/images/service1.png',
              subHead1: 'AC Service & Repair',
              head: 'Denting and Painting Services',
              subHead2: 'Car Health Check Up',
            ),
            SizedBox(
              height: 30.h,
            ),
            Categories(
              image1: 'assets/images/service3.png',
              image2: 'assets/images/service1.png',
              subHead1: 'AC Service & Repair',
              head: 'Denting and Painting Services',
              subHead2: 'Car Health Check Up',
            ),
            SizedBox(
              height: 30.h,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'DOWNLOAD THE APP',
                  style: TextStyle(
                      letterSpacing: 1.2, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 40,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'GET IT ON',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text(
                            'Google Play',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22.sp),
                          ),
                        ],
                      )
                    ],
                  ),
                  width: 193.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.black),
                  height: 58.h,
                ),
                SizedBox(
                  height: 20.h,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class service extends StatelessWidget {
  const service({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 96.w,
        height: 65.h,
        decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image),
            SizedBox(
              height: 6.h,
            ),
            Row(
              children: [
                Expanded(
                    child: FittedBox(
                  child: Text(
                    text,
                    maxLines: 1,
                  ),
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class item extends StatelessWidget {
  const item({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 159.h,
        width: 325.w,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/banner.png'),
                fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(13),
            color: Colors.black),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories(
      {Key? key,
      required this.head,
      required this.subHead1,
      required this.subHead2,
      required this.image1,
      required this.image2})
      : super(key: key);

  final String image1;
  final String image2;
  final String head;
  final String subHead1;
  final String subHead2;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            head,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.12.sp),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 139.w,
                  height: 81.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.sp),
                      image: DecorationImage(
                          image: AssetImage(image1), fit: BoxFit.fill)),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(subHead1),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 139.w,
                  height: 81.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.sp),
                      image: DecorationImage(
                          image: AssetImage(image2), fit: BoxFit.fill)),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(subHead2),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        homeServiceButton(),
      ],
    );
  }
}

class homeServiceButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Container(
          //width: 100.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(
            child: Text(
              'View All Services',
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
