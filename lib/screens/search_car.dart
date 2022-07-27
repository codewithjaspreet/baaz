import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/searchContainer.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back_ios,
          size: 30,
          color: Color(0xFF00144F),
        ),
        title: Text(
          'Select Your Car',
          style:
              TextStyle(color: Color(0xFF00144F), fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            search_container(
              heading: 'Search Service',
            ),
            SizedBox(
              height: 12.h,
            ),
            Expanded(child: Image.asset('assets/images/brands 1.png'))
          ],
        ),
      ),
    );
  }
}
