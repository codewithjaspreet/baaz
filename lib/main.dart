import 'package:baaz/screens/Discount.dart';
import 'package:baaz/screens/home.dart';
import 'package:baaz/screens/location_search.dart';
import 'package:baaz/screens/manage_Address.dart';
import 'package:baaz/screens/my_profile.dart';
import 'package:baaz/screens/landing_page.dart';
import 'package:baaz/screens/my_booking.dart';
import 'package:baaz/screens/notification.dart';
import 'package:baaz/screens/opt_verification.dart';
import 'package:baaz/screens/order.dart';
import 'package:baaz/screens/peroidic_services.dart';
import 'package:baaz/screens/search_bar.dart';
import 'package:baaz/screens/search_car.dart';
import 'package:baaz/screens/select_car_page.dart';
import 'package:baaz/screens/settings.dart';
import 'package:baaz/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Refer&Earn/presentation/paymentPage.dart';
import 'Refer&Earn/presentation/payment_mode_Page.dart';
import 'Refer&Earn/presentation/peroidic_services_ui_Page.dart';
import 'Refer&Earn/presentation/refer&EarnPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Payment(),
        );
      },
    );
  }
}
