import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalculateKeyboardRow4 extends ConsumerWidget {
  const CalculateKeyboardRow4({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child:SizedBox(
            child: TextButton(
              child: const Text(
                '1',
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
                '2',
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
                '3',
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
                '+',
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