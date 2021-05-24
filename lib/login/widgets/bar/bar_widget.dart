import 'package:flutter/material.dart';
import 'package:loci/core/app_gradient.dart';
import 'package:loci/core/app_text_styles.dart';

class BarWidget extends PreferredSize {
  BarWidget()
      : super(
          preferredSize: Size.fromHeight(150),
          child: Container(
            height: 150,
            child: Stack(
              children: [
                Container(
                  height: 200,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    gradient: AppGradients.linearBar,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: new Offset(0.0, 5.0),
                        blurRadius: 20.0,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/LogoShadow.png',
                        width: 100,
                      ),
                      Container(
                        child: Text(
                          "Turkey in Space",
                          style: AppTextStyles.logo,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(
                    0.0,
                    2.0,
                  ),
                )
              ],
            ),
          ),
        );
}
