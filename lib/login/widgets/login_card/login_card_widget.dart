import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loci/core/app_colors.dart';
import 'package:loci/core/app_text_styles.dart';

class LoginCardWidget extends StatelessWidget {
  const LoginCardWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 500,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: AppColors.box,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: new Offset(0.0, 5.0),
              blurRadius: 20.0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "EXPLOSÃO DE SABORES!",
                  style: AppTextStyles.headingSlogan,
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  "Você esta na mesa 7",
                  style: AppTextStyles.headingSec,
                ),
              ],
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: '? Quantas pessoas são',
                          hintTextDirection: TextDirection.rtl),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Nome das pessoas (Opcional)',
                          hintTextDirection: TextDirection.rtl),
                    ),
                    TextFormField(),
                    TextFormField(),
                    TextFormField(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
