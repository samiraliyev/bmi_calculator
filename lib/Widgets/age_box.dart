import 'package:flutter/material.dart';

import '../Constants/app_strings.dart';
import 'weight_and_age_box.dart';

class AgeBox extends StatefulWidget {
  const AgeBox({super.key});

  @override
  State<AgeBox> createState() => _AgeBoxState();
}

class _AgeBoxState extends State<AgeBox> {
  int age = 25;
  @override
  Widget build(BuildContext context) {
    return WeightAndAgeBox(
      title: AppString.userAGE,
      number: age,
      onIncrement: () {
        age++;
        setState(() {});
      },
      onDecrement: () {
        if (age == 0) {
          return;
        }
        age--;
        setState(() {});
      },
    );
  }
}
