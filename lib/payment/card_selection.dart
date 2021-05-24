import 'package:flutter/material.dart';
import 'package:loci/core/app_colors.dart';
import 'package:loci/payment/card_page.dart';

class CardSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.silver,
      body: Center(
        child: Container(
          height: 300,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            clipBehavior: Clip.antiAlias,
            elevation: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  title: Center(
                    child: Text('OK!'),
                  ),
                  subtitle: Center(
                    child: Text(
                      'Escolha o tipo de cartão',
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonBar(
                      children: <Widget>[
                        // ignore: deprecated_member_use
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CardPage(),
                              ),
                            );
                          },
                          child: Text('Crédito'),
                        ),
                        // ignore: deprecated_member_use
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CardPage(),
                              ),
                            );
                          },
                          child: Text('Débito'),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
