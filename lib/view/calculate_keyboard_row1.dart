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
            width: 50,
            height: 50,
            child: TextButton(
              child: const Text(
                  'C',
                style: TextStyle(
                  fontSize: 24,
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