import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Factory Method Design Pattarn',
    theme: ThemeData(
      useMaterial3: true,
      colorSchemeSeed: Colors.purple,
    ),
    home: const HomeScreen(),
  ));
}
