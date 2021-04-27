import 'package:flutter/material.dart';
import 'package:loci/core/app_images.dart';
import 'package:loci/core/core.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Future.delayed(
    //   Duration(seconds: 4),
    // ).then((_) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) Homepage(),),),);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: [
              0.05,
              0.2,
              0.5,
              0.8,
              0.95,
            ],
            colors: [
              Colors.red.shade800,
              Colors.purple.shade800,
              Colors.grey.shade200,
              Colors.deepPurple,
              Colors.red.shade800,
            ],
          ),
        ),
        child: Center(
          child: Image.asset(AppImages.logo),
        ),
      ),
    );
  }
}
