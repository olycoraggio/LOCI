import 'package:flutter/material.dart';

class AppGradients {
  static final linear = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Colors.red[800],
      Colors.purple[800],
      Colors.grey[200],
      Colors.deepPurple,
      Colors.red[800],
    ],
    stops: [
      0.05,
      0.2,
      0.5,
      0.8,
      0.95,
    ],
  );
  static final linearbar = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Colors.black,
      Colors.blueGrey[900],
      Colors.grey[350],
    ],
    stops: [
      0.15,
      0.5,
      0.6,
    ],
  );
}
