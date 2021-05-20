import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String pathIcons = 'assets/icons/';

class AppIcons {
  static const cerveja = '${pathIcons}cerveja.svg';
  static const drink = '${pathIcons}drink.svg';
  static const hamburguer = '${pathIcons}hamburguer.svg';
  static const pizza = '${pathIcons}pizza.svg';
}

class AppIcon extends StatelessWidget {
  final String icon;
  final Size size;
  final Color color;

  const AppIcon(
    this.icon, {
    Key key,
    this.size,
    this.color,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      height: size?.height ?? 24,
      width: size?.width ?? 24,
      color: color ?? Colors.black,
    );
  }
}
