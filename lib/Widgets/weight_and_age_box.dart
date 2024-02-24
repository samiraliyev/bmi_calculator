import 'package:flutter/material.dart';

import 'card_box.dart';
import 'number_text.dart';
import 'rounded_button.dart';
import 'title_text.dart';

class WeightAndAgeBox extends StatelessWidget {
  const WeightAndAgeBox({
    super.key,
    required this.title,
    required this.number,
    required this.onIncrement,
    required this.onDecrement,
  });

  final String title;
  final int number;
  final void Function() onIncrement;
  final void Function() onDecrement;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CardBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TitleText(text: title),
            NumberText(numberText: '$number'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RoundedButton(
                  icon: const Icon(Icons.remove),
                  onTap: onDecrement,
                ),
                const SizedBox(width: 12),
                RoundedButton(
                  icon: const Icon(Icons.add),
                  onTap: onIncrement,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
