import 'package:flutter/material.dart';
import 'package:loci/cart/widget/cart_item_widget.dart';
import 'package:loci/core/app_colors.dart';
import 'package:loci/core/app_gradient.dart';
import 'package:loci/core/core.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundButton,
      appBar: AppBar(
        toolbarHeight: 100,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/LogoShadow.png',
              width: 45,
            ),
            Text(
              "Carrinho",
              style: AppTextStyles.logo,
            ),
            Image.asset(
              'assets/images/LogoShadow.png',
              width: 45,
            ),
          ],
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: AppGradients.linearBar,
          ),
        ),
        backgroundColor: AppColors.backgroundButton,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(8),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              child: Column(
                children: [
                  CartItem(title: "Coca-Cola", price: 6.99),
                  CartItem(title: "Peru", price: 72.99),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
