import 'package:flutter/material.dart';
import 'package:loci/core/app_colors.dart';
import 'package:loci/core/app_text_styles.dart';

class CartItem extends StatelessWidget {
  final String title;
  final double price;

  const CartItem({
    Key key,
    @required this.title,
    @required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Center(
            child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 5,
          padding: new EdgeInsets.all(10.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: AppColors.silver,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        title,
                        style: AppTextStyles.tab,
                      ),
                      Text(
                        'Valor: $price',
                        style: AppTextStyles.body,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            AppColors.backgroundButton),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                            AppTextStyles.body)),
                    onPressed: () {
                      _showCartItemDialog(context);
                    },
                    child: Text('Alterar!'),
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}

void _showCartItemDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: Center(
          child: Text(
            "Vamos lá",
            style: AppTextStyles.heading,
          ),
        ),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Altere a quantidade",
              style: AppTextStyles.body,
            ),
          ],
        ),
        actions: <Widget>[
          // IndicatorCardWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ignore: deprecated_member_use
              new FlatButton(
                child: new Text(
                  "Cancelar",
                  style: AppTextStyles.body,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              // ignore: deprecated_member_use
              new FlatButton(
                child: new Text(
                  "Confirmar",
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
