import 'package:flutter/material.dart';
import 'package:loci/login/login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LOCI",
      home: LoginPage(),
    );
  }
}
