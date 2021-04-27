import 'package:flutter/material.dart';
import 'package:loci/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LOCI",
      home: SplashPage(),
    );
  }
}
