import 'package:flutter/material.dart';
import 'package:loci/core/app_colors.dart';
import 'package:loci/core/app_gradient.dart';
import 'package:loci/core/app_text_styles.dart';
import 'package:loci/payment/card_page.dart';
import 'package:loci/payment/money_page_widget.dart';
import 'package:loci/payment/pix_page.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 3,
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
                  "Pagamento",
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
                  'Dinheiro',
                ),
              ),
              Tab(
                child: Text(
                  'PIX',
                ),
              ),
              Tab(
                child: Text(
                  'Cartão',
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
                child: MoneyPage(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: PixPage(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: CardPage(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
