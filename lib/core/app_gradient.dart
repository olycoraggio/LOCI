import 'package:flutter/material.dart';

class AppGradients {
  static final linear = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Colors.red.shade800,
      Colors.purple.shade800,
      Colors.grey.shade200,
      Colors.deepPurple,
      Colors.red.shade800,
    ],
    stops: [
      0.05,
      0.2,
      0.5,
      0.8,
      0.95,
    ],
  );
}
