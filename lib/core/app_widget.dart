import 'package:flutter/material.dart';
import 'package:loci/cart/cart_page.dart';
import 'package:loci/payment/payment_page.dart';
import '../splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LOCI",
      home: SplashPage(),
      routes: {
        '/payment': (context) => PaymentPage(),
        '/cart': (context) => CartPage(),
      },
    );
  }
}
