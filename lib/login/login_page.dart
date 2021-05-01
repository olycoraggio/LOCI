import 'package:flutter/material.dart';
import 'package:loci/login/widgets/bar/bar_widget.dart';

import '../core/app_colors.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarWidget(),
      backgroundColor: Colors.blueGrey[900],
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                iconSize: 50,
                alignment: Alignment.center,
                icon: Image.asset(
                  'assets/images/facebook.png',
                ),
                // color: Colors.transparent,
                tooltip: 'Facebook',
                splashColor: Colors.blue,
                onPressed: () {},
              ),
              IconButton(
                iconSize: 60,
                alignment: Alignment.center,
                icon: Image.asset(
                  'assets/images/instagram.png',
                ),
                color: Colors.white,
                tooltip: 'Instagram',
                splashColor: Colors.amber,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
