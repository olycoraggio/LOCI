import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import '../../../core/app_colors.dart';
import '../../../core/app_text_styles.dart';

class TopBarWidget extends StatelessWidget {
  final TabController controller;
  final Function(int) onTap;

  const TopBarWidget({
    Key key,
    this.controller,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        onTap: onTap,
        unselectedLabelColor: AppColors.textButtonMenu,
        labelColor: AppColors.box,
        labelStyle: AppTextStyles.tab,
        labelPadding: EdgeInsets.zero,
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        indicator: MaterialIndicator(
          color: AppColors.indicator,
          height: 2,
        ),
        controller: controller,
        tabs: [
          Tab(
            text: "Pratos",
          ),
          Tab(
            text: "Bedidas",
          ),
        ],
      ),
    );
  }
}
