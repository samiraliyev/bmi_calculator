import 'package:bmi_calculator/Constants/app_strings.dart';
import 'package:flutter/material.dart';

import 'age_box.dart';
import 'weight_and_age_box.dart';

class WeightAndAgeView extends StatelessWidget {
  const WeightAndAgeView({
    super.key,
    required this.onIncrementWeight,
    required this.onDecrementWeight,
    required this.weight,
  });

  final Function() onIncrementWeight;
  final Function() onDecrementWeight;
  final int weight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        WeightAndAgeBox(
          title: AppString.userWeigth,
          number: weight,
          onIncrement: onIncrementWeight,
          onDecrement: onDecrementWeight,
        ),
        const SizedBox(width: 16),
        const AgeBox(),
      ],
    );
  }
}
