import 'package:flutter/material.dart';
import 'package:loci/core/app_colors.dart';
import 'package:loci/core/app_text_styles.dart';
import 'package:loci/login/widgets/counter/counter_widget.dart';
import 'package:loci/menu/menu_page.dart';

import '../../../core/app_colors.dart';

class LoginCardWidget extends StatelessWidget {
  const LoginCardWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 550,
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
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text("Você está na mesa 7!",
                        style: AppTextStyles.headingTable),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CounterWidget(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nome do primeiro tripulante:',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nome do segundo tripulante:',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nome do terceiro tripulante:',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nome do quarto tripulante:',
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 250,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MenuPage(),
                            ),
                          );
                        },
                        child: Text('Decolar'),
                        style: ElevatedButton.styleFrom(
                          primary: AppColors.backgroundButton,
                          onPrimary: Colors.white,
                          textStyle: TextStyle(
                            fontSize: 30,
                          ),
                          shadowColor: Colors.grey,
                          elevation: 5,
                        ),
                      ),
                    ),
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
