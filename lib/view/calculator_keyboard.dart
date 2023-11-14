import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalculatorKeyboard extends ConsumerWidget {
  const CalculatorKeyboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Container(

      alignment:Alignment.centerRight,
      height: MediaQuery.of(context).size.height*0.65,
      decoration: BoxDecoration(
        /*image: const DecorationImage(
          image: AssetImage("assets/images/wood_floor.jpg"),
          fit: BoxFit.cover,
        ), *///DecorationImage
        border: Border.all(
          //color: Colors.green,
          width: 1,
        ), //Border.all
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }

}