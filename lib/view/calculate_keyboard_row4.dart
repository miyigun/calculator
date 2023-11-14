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
          child:Container(
            child: TextButton(
              child: Text(
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