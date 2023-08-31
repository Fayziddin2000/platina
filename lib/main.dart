import 'package:flutter/material.dart';
import 'package:platina/res/colors.dart';
import 'package:platina/screens/main_screen.dart';

void main() {
  runApp(const Platina());
}

class Platina extends StatelessWidget {
  const Platina({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: mainColor),
      home: const MainScreen(),
    );
  }
}
