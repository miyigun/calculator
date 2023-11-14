

import 'package:calculator/view/calculator_keyboard.dart';
import 'package:calculator/view/calculator_screen.dart';
import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CalculatorScreen(),
            CalculatorKeyboard(),
          ],
        ),
      ),
    );
  }

}