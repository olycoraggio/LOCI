import 'package:flutter/material.dart';
import 'package:loci/core/app_colors.dart';
import 'package:loci/core/app_text_styles.dart';

class MoneyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          height: 300,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            clipBehavior: Clip.antiAlias,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListTile(
                  title: Center(
                    child: Text(
                      'OBA!',
                      style: AppTextStyles.heading,
                    ),
                  ),
                  subtitle: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        'Estamos chegando de algum planeta!',
                        style: AppTextStyles.body,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            AppColors.backgroundButton),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                            AppTextStyles.body)),
                    onPressed: () {
                      _showDialog(context);
                    },
                    child: Text('Confirmar!'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: Center(
          child: Text(
            "Ótimo",
            style: AppTextStyles.heading,
          ),
        ),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Precisa de troco?",
              style: AppTextStyles.body,
            ),
          ],
        ),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ignore: deprecated_member_use
              new FlatButton(
                child: new Text(
                  "Não",
                  style: AppTextStyles.body,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              // ignore: deprecated_member_use
              new FlatButton(
                child: new Text(
                  "Sim",
                  style: AppTextStyles.body,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          ),
        ],
      );
    },
  );
}
