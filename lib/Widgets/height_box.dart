import 'package:bmi_calculator/Constants/app_colors.dart';
import 'package:bmi_calculator/Constants/app_strings.dart';
import 'package:flutter/material.dart';

import 'card_box.dart';
import 'number_text.dart';
import 'title_text.dart';

class HeightBox extends StatelessWidget {
  const HeightBox({
    super.key,
    required this.onSlide,
    required this.height,
  });

  final void Function(double) onSlide;
  final double height;

  @override
  Widget build(BuildContext context) {
    return CardBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TitleText(text: AppString.userHeight),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            mainAxisAlignment: MainAxisAlignment.center,
            textBaseline: TextBaseline.ideographic,
            children: [
              NumberText(numberText: height.toStringAsFixed(0)),
              const TitleText(text: 'cm'),
            ],
          ),
          SliderTheme(
            data: SliderThemeData(
              thumbColor: AppColor.sliderColor,
              activeTrackColor: Colors.white,
              inactiveTrackColor: Colors.grey.shade700,
            ),
            child: Slider(
              value: height,
              min: 0,
              max: 200,
              onChanged: onSlide,
            ),
          ),
        ],
      ),
    );
  }
}
