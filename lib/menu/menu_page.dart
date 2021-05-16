import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:loci/login/widgets/bar/bar_widget.dart';
import 'package:loci/menu/widgets/card/card_menu_widget.dart';
import 'package:loci/menu/widgets/card/test_card_menu_widget.dart';
import 'package:loci/menu/widgets/top_bar/top_bar_widget.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import '../core/app_colors.dart';
import '../core/app_colors.dart';
import '../core/app_colors.dart';
import '../core/app_text_styles.dart';
import '../core/app_text_styles.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarWidget(),
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: TopBarWidget(
                controller: tabController,
                onTap: (index) {
                  CardMenuWidget(); //colocar pra ir em cada página de produto
                  TestCardMenuWidget();
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                child: GridView.count(
                  physics: BouncingScrollPhysics(),
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
          ],
        ),
      ),
    );
  }
}
