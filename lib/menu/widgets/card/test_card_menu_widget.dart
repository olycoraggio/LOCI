import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:loci/core/app_images.dart';
import 'package:loci/core/app_text_styles.dart';

class TestCardMenuWidget extends StatelessWidget {
  //essas chamadas de propriedades abaixo devem ser repassadas onde a clase ja foi chamada
  // final String title;
  // final String description;
  // final double price;
  // final VoidCallback onTap;

  const TestCardMenuWidget({
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
              child: Image.asset(AppImages.instagram),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Nome do prato", //passar depois a propriedade 'title'
              style: AppTextStyles.text,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: Text(
                "description", //passar depois a propriedade 'descripition'
                style: AppTextStyles.body,
              ),
            ),
            Expanded(
              flex: 2,
              child: Text("Price"), //passar depois a propriedade 'price'
            )
          ],
        ),
      ),
    );
  }
}
