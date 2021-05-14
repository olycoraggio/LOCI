import 'package:flutter/material.dart';
import 'package:loci/login/widgets/bar/bar_widget.dart';
import 'package:loci/menu/widgets/card/card_menu_widget.dart';
import 'package:loci/menu/widgets/menu_buttons/menu_buttons_widgets.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarWidget(),
      backgroundColor: Colors.amber,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Cardápio")
                  // MenuButtonWidget(label: "Entradas"),
                  // MenuButtonWidget(label: "Pratos"),
                  // MenuButtonWidget(label: "Bebidas"),
                  // MenuButtonWidget(label: "Sobremesas"),
                ],
              ),
            ),
            Container(
              color: Colors.grey,
              height: 2,
            ),
            SizedBox(
              height: 25,
              child: Text(
                "Pratos",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.grey,
                height: 3,
              ),
            ),
            Expanded(
              child: Container(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    CardMenuWidget(),
                    CardMenuWidget(),
                    CardMenuWidget(),
                    CardMenuWidget(),
                    CardMenuWidget(),
                    CardMenuWidget(),
                    CardMenuWidget(),
                    CardMenuWidget(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
              child: Text("Bebidas"),
            ),
          ],
        ),
      ),
    );
  }
}
