import 'package:flutter/material.dart';
import 'package:loci/cart/cart_page.dart';
import 'package:loci/login/login_page.dart';
import 'package:loci/menu/menu_page.dart';
import 'package:loci/menu/widgets/card/bebidas_menu_widgets.dart';
import 'package:loci/menu/menu_page.dart';
import 'package:loci/payment/card_page.dart';
import 'package:loci/payment/payment_page.dart';

import '../login/login_page.dart';
import '../splash/splash_page.dart';
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
