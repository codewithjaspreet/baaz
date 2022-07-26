import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/add_pay.dart';
import '../widgets/pay_type.dart';

class PaymentMode extends StatelessWidget {
  const PaymentMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        elevation: 0,
        title: Text(
          'Payment Mode',
          style:
              TextStyle(color: Color(0XFF00144F), fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          PayType(
            type: 'Credit Card',
            icon: 'assets/images/creditcard.png',
          ),
          PayType(
            type: 'Wallet',
            icon: 'assets/images/wallet.png',
          ),
          PayType(
            type: 'Visa',
            icon: 'assets/images/visa.png',
          ),
          PayType(
            type: 'Google Pay',
            icon: 'assets/images/google.png',
          ),
          AddPayButton()
        ],
      ),
    );
  }
}
