import 'package:flutter/material.dart';
import 'package:loci/core/app_colors.dart';
import 'package:loci/core/app_gradient.dart';
import 'package:loci/core/app_text_styles.dart';
import 'package:loci/menu/widgets/card/bebidas_menu_widgets.dart';
import 'package:loci/menu/widgets/card/pratos_menu_widget.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.backgroundButton,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 4, right: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/LogoShadow.png',
                  width: 45,
                ),
                Text(
                  "Cardápio",
                  style: AppTextStyles.logo,
                ),
                Image.asset(
                  'assets/images/LogoShadow.png',
                  width: 45,
                ),
              ],
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: AppGradients.linearBar,
            ),
          ),
          bottom: TabBar(
            physics: BouncingScrollPhysics(),
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            labelPadding: EdgeInsets.zero,
            indicatorPadding: EdgeInsets.zero,
            unselectedLabelColor: AppColors.tab,
            labelStyle: AppTextStyles.tab,
            labelColor: AppColors.textButtonMenu,
            indicator: MaterialIndicator(
              color: AppColors.backgroundButton,
              height: 10,
              topLeftRadius: 8,
              topRightRadius: 8,
            ),
            tabs: <Widget>[
              Tab(
                child: Text(
                  'Pratos',
                ),
              ),
              Tab(
                child: Text(
                  'Bebidas',
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: PratoMenu(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: BebidaMenu(),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: AppColors.silver,
          shape: CircularNotchedRectangle(),
          notchMargin: 4,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.shopping_cart_rounded,
                    size: 38,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/cart');
                  },
                ),
                // Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Text(
                    "Valor",
                    style: AppTextStyles.body,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.payment),
          backgroundColor: Colors.red,
          splashColor: AppColors.textButtonMenu,
          onPressed: () {
            Navigator.pushNamed(context, '/payment');
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      ),
    );
  }
}
