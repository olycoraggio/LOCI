import 'package:flutter/material.dart';
import 'package:loci/core/app_gradient.dart';
import 'package:loci/core/app_images.dart';
import 'package:loci/core/core.dart';
import 'package:loci/login/login_page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 4),
    ).then(
      (_) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      ),
    );
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 160),
        decoration: BoxDecoration(gradient: AppGradients.linearBackground),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Image.asset(AppImages.logoShadow),
            ),
            Text.rich(
              TextSpan(
                text: "Turkey in Space",
                style: AppTextStyles.splash,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
