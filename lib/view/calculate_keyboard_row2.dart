import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalculateKeyboardRow2 extends ConsumerWidget {
  const CalculateKeyboardRow2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child:SizedBox(
            child: TextButton(
              child: const Text(
                '7',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
              onPressed: () {  },
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child:SizedBox(
            child: TextButton(
              child: const Text(
                '8',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
              onPressed: () {  },
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child:SizedBox(
            child: TextButton(
              child: const Text(
                '9',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
              onPressed: () {  },
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child:SizedBox(
            child: TextButton(
              child: const Text(
                'x',
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