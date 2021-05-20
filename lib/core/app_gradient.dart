import 'package:flutter/material.dart';

class AppGradients {
  static final linearBackground = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Color(0xFF000080),
      Colors.yellow[900],
      Colors.grey[350],
      Colors.yellow[900],
      Color(0xFF000080),
    ],
    stops: [
      0.05,
      0.2,
      0.5,
      0.8,
      0.95,
    ],
  );
  static final linearBar = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF000080),
      Colors.yellow[900],
      Colors.grey[350],
    ],
    stops: [
      0.15,
      0.5,
      0.8,
    ],
  );
  static final linearBarDown = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Color(0xFF000080),
      Colors.yellow[900],
      Colors.grey[350],
    ],
    stops: [
      0.15,
      0.5,
      0.8,
    ],
  );
}
