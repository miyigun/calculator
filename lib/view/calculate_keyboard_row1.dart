import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalculateKeyboardRow1 extends ConsumerWidget {
  const CalculateKeyboardRow1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child:SizedBox(
            child: TextButton(
              child: const Text(
                  'C',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.red
                ),
              ),
              onPressed: () {  },
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child:SizedBox(
            child: IconButton(
              icon: const Icon(Icons.backspace_outlined),
              iconSize: 40,
              color: Colors.red,
              onPressed: (){},
            )
          ),
        ),
        Expanded(
          flex: 3,
          child:SizedBox(
            child: IconButton(
              icon: const Icon(Icons.percent_rounded),
              iconSize: 40,
              color: Colors.red,
              onPressed: (){},
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child:SizedBox(
            child: TextButton(
              child: const Text(
                '/',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.red,
                ),
              ),
              onPressed: () {  },
            ),
          ),
        ),
      ],
    );
  }

}