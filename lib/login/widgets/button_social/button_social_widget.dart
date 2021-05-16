import 'package:flutter/material.dart';

class ButtonSocialWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
    );
  }
}
