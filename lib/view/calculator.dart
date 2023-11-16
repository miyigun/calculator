import 'package:calculator/controller/controller.dart';
import 'package:calculator/view/calculator_keyboard.dart';
import 'package:calculator/view/calculator_keyboard2.dart';
import 'package:calculator/view/calculator_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final controller=ChangeNotifierProvider((ref) => Controller());

class Calculator extends ConsumerWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch=ref.read(controller);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const CalculatorScreen(),
              const SizedBox(height: 10,),
              watch.scienceCalculator ? const CalculatorKeyboard2() : const CalculatorKeyboard(),
            ],
          ),
        ),
      ),
    );
  }

}