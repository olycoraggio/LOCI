import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:loci/core/app_images.dart';
import 'package:loci/core/app_text_styles.dart';

class CardMenuWidget extends StatelessWidget {
  // final String title;
  // final String description;
  // final double price;
  // final VoidCallback onTap;

  const CardMenuWidget({
    Key key,
    // required this.title,
    // required this.description,
    // required this.price,
    // required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(color: Colors.blueAccent),
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 30,
              width: 30,
              child: Image.asset(AppImages.facebook),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Nome do prato",
              style: AppTextStyles.text,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: Text(
                "description",
                style: AppTextStyles.body,
              ),
            ),
            Expanded(
              flex: 2,
              child: Text("Price"),
            )
          ],
        ),
      ),
    );
  }
}
