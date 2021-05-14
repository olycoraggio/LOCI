import 'package:flutter/material.dart';
import 'package:loci/core/app_colors.dart';
import 'package:loci/core/app_text_styles.dart';

class MenuButtonWidget extends StatelessWidget {
  final String label;

  MenuButtonWidget({
    Key key,
    this.label,
  })  : assert(["Entradas", "Pratos", "Bebidas", "Sobremesas"].contains(label)),
        super(key: key);

  final config = {
    "Entradas": {
      "color": AppColors.backgroundButtonMenu,
      "borderColor": AppColors.borderButtonMenu,
      "fontColor": AppColors.textButtonMenu
    },
    "Pratos": {
      "color": AppColors.backgroundButtonMenu,
      "borderColor": AppColors.borderButtonMenu,
      "fontColor": AppColors.textButtonMenu
    },
    "Bebidas": {
      "color": AppColors.backgroundButtonMenu,
      "borderColor": AppColors.borderButtonMenu,
      "fontColor": AppColors.textButtonMenu
    },
    "Sobremesas": {
      "color": AppColors.backgroundButtonMenu,
      "borderColor": AppColors.borderButtonMenu,
      "fontColor": AppColors.textButtonMenu
    },
  };

  Color get color => config[label]['color'];
  Color get borderColor => config[label]['borderColor'];
  Color get fontColor => config[label]['fontColor'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          border: Border.fromBorderSide(
            BorderSide(color: borderColor),
          ),
          borderRadius: BorderRadius.circular(28),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
          child: Text(
            label,
            style: AppTextStyles.text,
          ),
        ),
      ),
    );
  }
}
