import 'package:flutter/material.dart';
import 'package:loci/login/widgets/bar/bar_widget.dart';
import 'package:loci/login/widgets/button_social/button_social_widget.dart';
import 'package:loci/login/widgets/login_card/login_card_widget.dart';

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
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: LoginCardWidget(),
        ),
      ),
      backgroundColor: Colors.blueGrey[900],
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonSocialWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
